// Supabase Edge Function for sending FCM notifications
import "jsr:@supabase/functions-js/edge-runtime.d.ts";

// Types
interface NotificationRequest {
  token: string;
  notification: {
    title: string;
    body: string;
  };
  data?: Record<string, string>;
  priority?: "high" | "normal";
}

interface BatchNotificationRequest {
  tokens: string[];
  notification: {
    title: string;
    body: string;
  };
  data?: Record<string, string>;
  priority?: "high" | "normal";
}

interface ServiceAccount {
  type: string;
  project_id: string;
  private_key_id: string;
  private_key: string;
  client_email: string;
  client_id: string;
  auth_uri: string;
  token_uri: string;
  auth_provider_x509_cert_url: string;
  client_x509_cert_url: string;
}

// FCM HTTP v1 API endpoint
const FCM_SEND_URL = (projectId: string) =>
  `https://fcm.googleapis.com/v1/projects/${projectId}/messages:send`;

// Helper function to get access token using service account
async function getAccessToken(serviceAccount: ServiceAccount): Promise<string> {
  const now = Math.floor(Date.now() / 1000);
  const expiry = now + 3600; // 1 hour

  // Create JWT header
  const header = {
    alg: "RS256",
    typ: "JWT",
  };

  // Create JWT payload
  const payload = {
    iss: serviceAccount.client_email,
    scope: "https://www.googleapis.com/auth/firebase.messaging",
    aud: serviceAccount.token_uri,
    exp: expiry,
    iat: now,
  };

  // Import private key
  const privateKey = await crypto.subtle.importKey(
    "pkcs8",
    new TextEncoder().encode(
      serviceAccount.private_key
        .replace(/\\n/g, "\n")
        .replace("-----BEGIN PRIVATE KEY-----", "")
        .replace("-----END PRIVATE KEY-----", "")
        .replace(/\s/g, ""),
    ),
    {
      name: "RSASSA-PKCS1-v1_5",
      hash: "SHA-256",
    },
    false,
    ["sign"],
  );

  // Create JWT
  const headerBase64 = btoa(JSON.stringify(header))
    .replace(/\+/g, "-")
    .replace(/\//g, "_")
    .replace(/=/g, "");

  const payloadBase64 = btoa(JSON.stringify(payload))
    .replace(/\+/g, "-")
    .replace(/\//g, "_")
    .replace(/=/g, "");

  const dataToSign = `${headerBase64}.${payloadBase64}`;

  const signature = await crypto.subtle.sign(
    "RSASSA-PKCS1-v1_5",
    privateKey,
    new TextEncoder().encode(dataToSign),
  );

  const signatureBase64 = btoa(
    String.fromCharCode(...new Uint8Array(signature)),
  )
    .replace(/\+/g, "-")
    .replace(/\//g, "_")
    .replace(/=/g, "");

  const jwt = `${dataToSign}.${signatureBase64}`;

  // Exchange JWT for access token
  const tokenResponse = await fetch(serviceAccount.token_uri, {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams({
      grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
      assertion: jwt,
    }),
  });

  if (!tokenResponse.ok) {
    const error = await tokenResponse.text();
    throw new Error(`Failed to get access token: ${error}`);
  }

  const tokenData = await tokenResponse.json();
  return tokenData.access_token;
}

// Send single notification
async function sendNotification(
  accessToken: string,
  projectId: string,
  request: NotificationRequest,
): Promise<{ success: boolean; error?: string }> {
  const message = {
    message: {
      token: request.token,
      notification: request.notification,
      data: request.data,
      android: {
        priority: request.priority === "high" ? "HIGH" : "NORMAL",
      },
      apns: {
        headers: {
          "apns-priority": request.priority === "high" ? "10" : "5",
        },
      },
    },
  };

  try {
    const response = await fetch(FCM_SEND_URL(projectId), {
      method: "POST",
      headers: {
        "Authorization": `Bearer ${accessToken}`,
        "Content-Type": "application/json",
      },
      body: JSON.stringify(message),
    });

    if (response.ok) {
      return { success: true };
    }

    const error = await response.text();
    console.error("FCM send error:", error);

    // Check for invalid token error
    if (error.includes("UNREGISTERED") || error.includes("INVALID_ARGUMENT")) {
      return {
        success: false,
        error: "invalid_token",
      };
    }

    return {
      success: false,
      error: error,
    };
  } catch (error) {
    console.error("Failed to send notification:", error);
    return {
      success: false,
      error: error.message,
    };
  }
}

Deno.serve(async (req) => {
  try {
    // CORS headers
    if (req.method === "OPTIONS") {
      return new Response("ok", {
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "POST, OPTIONS",
          "Access-Control-Allow-Headers":
            "authorization, x-client-info, apikey, content-type",
        },
      });
    }

    // Verify authentication
    const authHeader = req.headers.get("Authorization");
    if (!authHeader) {
      return new Response(
        JSON.stringify({ error: "Missing authorization header" }),
        {
          status: 401,
          headers: { "Content-Type": "application/json" },
        },
      );
    }

    // Get service account from environment variable
    const serviceAccountJson = Deno.env.get("FCM_SERVICE_ACCOUNT");
    if (!serviceAccountJson) {
      console.error("FCM_SERVICE_ACCOUNT environment variable not set");
      return new Response(
        JSON.stringify({ error: "Server configuration error" }),
        {
          status: 500,
          headers: { "Content-Type": "application/json" },
        },
      );
    }

    const serviceAccount: ServiceAccount = JSON.parse(serviceAccountJson);

    // Get access token
    const accessToken = await getAccessToken(serviceAccount);

    // Parse request body
    const body = await req.json();

    // Handle batch notifications
    if (body.tokens && Array.isArray(body.tokens)) {
      const batchRequest = body as BatchNotificationRequest;
      const results = await Promise.all(
        batchRequest.tokens.map((token) =>
          sendNotification(accessToken, serviceAccount.project_id, {
            token,
            notification: batchRequest.notification,
            data: batchRequest.data,
            priority: batchRequest.priority,
          })
        ),
      );

      const successCount = results.filter((r) => r.success).length;
      const failureCount = results.filter((r) => !r.success).length;
      const invalidTokens = results
        .map((r, i) =>
          r.error === "invalid_token" ? batchRequest.tokens[i] : null
        )
        .filter((t) => t !== null);

      return new Response(
        JSON.stringify({
          success: successCount > 0,
          successCount,
          failureCount,
          invalidTokens,
          results,
        }),
        {
          headers: {
            "Content-Type": "application/json",
            "Access-Control-Allow-Origin": "*",
          },
        },
      );
    }

    // Handle single notification
    const notificationRequest = body as NotificationRequest;

    if (!notificationRequest.token || !notificationRequest.notification) {
      return new Response(
        JSON.stringify({
          error: "Missing required fields: token and notification",
        }),
        {
          status: 400,
          headers: { "Content-Type": "application/json" },
        },
      );
    }

    const result = await sendNotification(
      accessToken,
      serviceAccount.project_id,
      notificationRequest,
    );

    return new Response(
      JSON.stringify(result),
      {
        status: result.success ? 200 : 400,
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
        },
      },
    );
  } catch (error) {
    console.error("Edge function error:", error);
    return new Response(
      JSON.stringify({
        error: "Internal server error",
        message: error.message,
      }),
      {
        status: 500,
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
        },
      },
    );
  }
});
