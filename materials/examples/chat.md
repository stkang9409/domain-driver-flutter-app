## 채팅앱 바운디드 컨텍스트 설계

### 전체 컨텍스트 맵

```
lib/
├── contexts/
│   ├── identity/              # 사용자 인증 및 프로필
│   ├── conversation/          # 채팅방 관리
│   ├── messaging/             # 메시지 전송/수신
│   ├── presence/              # 온라인 상태 및 읽음 확인
│   ├── media/                 # 미디어 파일 관리
│   ├── notification/          # 알림 관리
│   ├── search/                # 검색 기능
│   └── settings/              # 사용자 설정 및 프라이버시
│
├── features/
│   ├── chat_list/             # 채팅방 목록 화면
│   ├── chat_room/             # 채팅방 화면
│   ├── contacts/              # 연락처/친구 목록
│   ├── profile/               # 프로필 관리
│   └── settings/              # 설정 화면
│
├── infrastructure/
│   └── realtime/              # 실시간 통신 인프라
│       ├── websocket/
│       └── sync/
└── shared/
```

### 상세 디렉토리 구조

```
lib/contexts/
├── identity/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── user.dart
│   │   ├── entities/
│   │   │   ├── user_profile.dart
│   │   │   ├── user_status.dart
│   │   │   └── blocked_user.dart
│   │   ├── value_objects/
│   │   │   ├── user_id.dart
│   │   │   ├── username.dart
│   │   │   └── phone_number.dart
│   │   └── repositories/
│   │       └── user_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── conversation/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── conversation.dart
│   │   │   └── group_conversation.dart
│   │   ├── entities/
│   │   │   ├── participant.dart
│   │   │   ├── conversation_settings.dart
│   │   │   └── admin_permission.dart
│   │   ├── value_objects/
│   │   │   ├── conversation_id.dart
│   │   │   ├── conversation_type.dart
│   │   │   └── participant_role.dart
│   │   ├── repositories/
│   │   │   └── conversation_repository.dart
│   │   └── services/
│   │       └── conversation_service.dart
│   ├── application/
│   └── infrastructure/
│
├── messaging/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── message.dart
│   │   ├── entities/
│   │   │   ├── text_content.dart
│   │   │   ├── media_content.dart
│   │   │   ├── reply_info.dart
│   │   │   └── reaction.dart
│   │   ├── value_objects/
│   │   │   ├── message_id.dart
│   │   │   ├── message_type.dart
│   │   │   └── message_status.dart
│   │   ├── repositories/
│   │   │   └── message_repository.dart
│   │   └── services/
│   │       ├── message_sender.dart
│   │       └── message_encryptor.dart
│   ├── application/
│   └── infrastructure/
│
├── presence/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── user_presence.dart
│   │   ├── entities/
│   │   │   ├── online_status.dart
│   │   │   ├── last_seen.dart
│   │   │   └── typing_indicator.dart
│   │   ├── value_objects/
│   │   │   └── presence_status.dart
│   │   ├── repositories/
│   │   │   └── presence_repository.dart
│   │   └── services/
│   │       └── presence_tracker.dart
│   ├── application/
│   └── infrastructure/
│
├── media/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── media_file.dart
│   │   ├── entities/
│   │   │   ├── image_metadata.dart
│   │   │   ├── video_metadata.dart
│   │   │   └── document_metadata.dart
│   │   ├── value_objects/
│   │   │   ├── file_size.dart
│   │   │   ├── mime_type.dart
│   │   │   └── media_id.dart
│   │   ├── repositories/
│   │   │   └── media_repository.dart
│   │   └── services/
│   │       ├── media_uploader.dart
│   │       └── thumbnail_generator.dart
│   ├── application/
│   └── infrastructure/
│
├── notification/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── notification_settings.dart
│   │   ├── entities/
│   │   │   ├── push_notification.dart
│   │   │   └── in_app_notification.dart
│   │   ├── repositories/
│   │   │   └── notification_repository.dart
│   │   └── services/
│   │       └── notification_sender.dart
│   ├── application/
│   └── infrastructure/
│
├── search/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── search_index.dart
│   │   ├── entities/
│   │   │   ├── message_search_result.dart
│   │   │   ├── user_search_result.dart
│   │   │   └── media_search_result.dart
│   │   ├── value_objects/
│   │   │   └── search_query.dart
│   │   ├── repositories/
│   │   │   └── search_repository.dart
│   │   └── services/
│   │       └── search_engine.dart
│   ├── application/
│   └── infrastructure/
│
└── settings/
    ├── domain/
    │   ├── aggregates/
    │   │   ├── user_settings.dart
    │   │   └── privacy_settings.dart
    │   ├── entities/
    │   │   ├── chat_backup.dart
    │   │   └── data_usage.dart
    │   ├── repositories/
    │   │   └── settings_repository.dart
    │   └── services/
    │       └── backup_service.dart
    ├── application/
    └── infrastructure/
```

### 실시간 통신 인프라

```
lib/infrastructure/realtime/
├── websocket/
│   ├── websocket_client.dart
│   ├── websocket_connection_manager.dart
│   └── websocket_event_handler.dart
├── sync/
│   ├── message_sync_service.dart
│   ├── conversation_sync_service.dart
│   └── offline_sync_manager.dart
├── stream/
│   ├── message_stream_provider.dart
│   ├── presence_stream_provider.dart
│   └── typing_stream_provider.dart
└── cache/
    ├── message_cache.dart
    ├── conversation_cache.dart
    └── media_cache.dart
```

### Features (UI) 구조

```
lib/features/
├── chat_list/
│   ├── pages/
│   │   └── chat_list_page.dart
│   ├── widgets/
│   │   ├── chat_list_item.dart
│   │   ├── unread_badge.dart
│   │   └── last_message_preview.dart
│   └── providers/
│       ├── chat_list_provider.dart
│       └── unread_count_provider.dart
│
├── chat_room/
│   ├── pages/
│   │   └── chat_room_page.dart
│   ├── widgets/
│   │   ├── message_list.dart
│   │   ├── message_bubble.dart
│   │   ├── message_input.dart
│   │   ├── typing_indicator.dart
│   │   └── media_preview.dart
│   └── providers/
│       ├── messages_provider.dart
│       ├── typing_provider.dart
│       └── presence_provider.dart
│
├── contacts/
│   ├── pages/
│   │   ├── contacts_page.dart
│   │   └── add_contact_page.dart
│   ├── widgets/
│   │   ├── contact_item.dart
│   │   └── online_status_indicator.dart
│   └── providers/
│       └── contacts_provider.dart
│
└── call/
    ├── pages/
    │   ├── voice_call_page.dart
    │   └── video_call_page.dart
    ├── widgets/
    │   └── call_controls.dart
    └── providers/
        └── call_provider.dart
```

### 통합 레이어

```
lib/integration/
├── message_conversation_integration.dart
├── presence_notification_integration.dart
├── media_message_integration.dart
└── realtime_sync_integration.dart
```

### 채팅앱의 특별 고려사항

1. **실시간 동기화**

   - WebSocket/Socket.IO를 통한 실시간 메시지
   - 오프라인 지원 및 동기화
   - 읽음 확인 및 전송 상태

2. **확장성**

   - 메시지 페이지네이션
   - 대용량 미디어 처리
   - 효율적인 캐싱 전략

3. **보안**

   - End-to-End 암호화
   - 미디어 파일 보안
   - 사용자 프라이버시

4. **성능**
   - 메시지 로컬 캐싱
   - 이미지 썸네일 생성
   - 백그라운드 동기화
