정 방법:

1. Firebase Service Account 키 생성:

1. Firebase Console → 프로젝트 설정 → 서비스 계정
1. "새 비공개 키 생성" 클릭
1. JSON 파일 다운로드

1. Supabase 환경 변수 설정:

# 로컬 환경

supabase secrets set FCM_SERVICE_ACCOUNT='<service-account-json-content>'

# 프로덕션 환경 (Supabase Dashboard)

# Settings → Edge Functions → Secrets에서 FCM_SERVICE_ACCOUNT 추가

3. Edge Function 배포:

supabase functions deploy send_notification

사용 예시:

// 단일 알림
await notificationSender.sendPushNotification(notification);

// 배치 알림
await notificationSender.sendBulkNotifications(notifications);
