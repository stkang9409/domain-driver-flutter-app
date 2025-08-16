## 틴더(Tinder) 같은 소개팅 앱 바운디드 컨텍스트 설계

### 전체 컨텍스트 맵

```
lib/
├── contexts/
│   ├── identity/              # 사용자 인증 및 계정
│   ├── profile/               # 프로필 관리
│   ├── discovery/             # 사용자 탐색 및 추천
│   ├── matching/              # 매칭 시스템
│   ├── messaging/             # 채팅 및 메시징
│   ├── location/              # 위치 기반 서비스
│   ├── verification/          # 신원 확인 및 안전
│   ├── subscription/          # 프리미엄 구독
│   ├── moderation/            # 신고 및 차단
│   └── analytics/             # 사용자 행동 분석
│
├── features/
│   ├── swipe/                 # 스와이프 화면
│   ├── matches/               # 매치 목록
│   ├── chat/                  # 채팅 화면
│   ├── profile_editor/        # 프로필 편집
│   ├── settings/              # 설정
│   └── explore/               # 탐색 (프리미엄)
│
└── shared/
```

### 상세 디렉토리 구조

```
lib/contexts/
├── identity/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── user_account.dart
│   │   ├── entities/
│   │   │   ├── authentication_method.dart
│   │   │   ├── phone_verification.dart
│   │   │   ├── email_verification.dart
│   │   │   └── social_login.dart
│   │   ├── value_objects/
│   │   │   ├── user_id.dart
│   │   │   ├── phone_number.dart
│   │   │   └── birth_date.dart
│   │   └── repositories/
│   │       └── account_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── profile/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── user_profile.dart
│   │   ├── entities/
│   │   │   ├── profile_photo.dart
│   │   │   ├── bio.dart
│   │   │   ├── interest.dart
│   │   │   ├── lifestyle_choice.dart
│   │   │   ├── education.dart
│   │   │   ├── occupation.dart
│   │   │   ├── profile_prompt.dart
│   │   │   └── spotify_anthem.dart
│   │   ├── value_objects/
│   │   │   ├── profile_completeness.dart
│   │   │   ├── photo_order.dart
│   │   │   ├── gender.dart
│   │   │   └── sexual_orientation.dart
│   │   ├── repositories/
│   │   │   └── profile_repository.dart
│   │   └── services/
│   │       ├── photo_validator.dart
│   │       └── profile_optimizer.dart
│   ├── application/
│   └── infrastructure/
│
├── discovery/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── discovery_feed.dart
│   │   │   └── recommendation_engine.dart
│   │   ├── entities/
│   │   │   ├── discovery_profile.dart
│   │   │   ├── discovery_preferences.dart
│   │   │   ├── age_range.dart
│   │   │   ├── distance_range.dart
│   │   │   ├── discovery_filters.dart
│   │   │   └── boost_status.dart
│   │   ├── value_objects/
│   │   │   ├── distance.dart
│   │   │   ├── discovery_score.dart
│   │   │   └── preference_weight.dart
│   │   ├── repositories/
│   │   │   └── discovery_repository.dart
│   │   └── services/
│   │       ├── recommendation_algorithm.dart
│   │       ├── profile_ranker.dart
│   │       └── feed_refresher.dart
│   ├── application/
│   └── infrastructure/
│
├── matching/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── match.dart
│   │   │   └── swipe_session.dart
│   │   ├── entities/
│   │   │   ├── swipe_action.dart
│   │   │   ├── super_like.dart
│   │   │   ├── match_notification.dart
│   │   │   ├── unmatch_action.dart
│   │   │   └── match_expiry.dart
│   │   ├── value_objects/
│   │   │   ├── swipe_direction.dart
│   │   │   ├── match_id.dart
│   │   │   └── match_timestamp.dart
│   │   ├── repositories/
│   │   │   ├── match_repository.dart
│   │   │   └── swipe_repository.dart
│   │   └── services/
│   │       ├── match_detector.dart
│   │       └── swipe_limiter.dart
│   ├── application/
│   └── infrastructure/
│
├── messaging/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── conversation.dart
│   │   │   └── message.dart
│   │   ├── entities/
│   │   │   ├── text_message.dart
│   │   │   ├── gif_message.dart
│   │   │   ├── photo_message.dart
│   │   │   ├── voice_message.dart
│   │   │   ├── message_reaction.dart
│   │   │   └── read_receipt.dart
│   │   ├── value_objects/
│   │   │   ├── message_id.dart
│   │   │   └── conversation_id.dart
│   │   ├── repositories/
│   │   │   └── messaging_repository.dart
│   │   └── services/
│   │       ├── message_encryptor.dart
│   │       └── notification_sender.dart
│   ├── application/
│   └── infrastructure/
│
├── location/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── user_location.dart
│   │   ├── entities/
│   │   │   ├── location_update.dart
│   │   │   ├── travel_mode.dart
│   │   │   ├── location_history.dart
│   │   │   └── passport_location.dart
│   │   ├── value_objects/
│   │   │   ├── coordinates.dart
│   │   │   ├── city.dart
│   │   │   └── country.dart
│   │   ├── repositories/
│   │   │   └── location_repository.dart
│   │   └── services/
│   │       ├── location_tracker.dart
│   │       └── distance_calculator.dart
│   ├── application/
│   └── infrastructure/
│
├── verification/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── verification_status.dart
│   │   ├── entities/
│   │   │   ├── photo_verification.dart
│   │   │   ├── selfie_verification.dart
│   │   │   ├── id_verification.dart
│   │   │   └── blue_checkmark.dart
│   │   ├── value_objects/
│   │   │   └── verification_level.dart
│   │   ├── repositories/
│   │   │   └── verification_repository.dart
│   │   └── services/
│   │       ├── face_detector.dart
│   │       └── verification_processor.dart
│   ├── application/
│   └── infrastructure/
│
├── subscription/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── subscription.dart
│   │   ├── entities/
│   │   │   ├── tinder_plus.dart
│   │   │   ├── tinder_gold.dart
│   │   │   ├── tinder_platinum.dart
│   │   │   ├── boost_pack.dart
│   │   │   └── super_like_pack.dart
│   │   ├── value_objects/
│   │   │   ├── subscription_tier.dart
│   │   │   └── feature_access.dart
│   │   ├── repositories/
│   │   │   └── subscription_repository.dart
│   │   └── services/
│   │       └── payment_processor.dart
│   ├── application/
│   └── infrastructure/
│
├── moderation/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── safety_center.dart
│   │   ├── entities/
│   │   │   ├── report.dart
│   │   │   ├── block_action.dart
│   │   │   ├── unmatch_reason.dart
│   │   │   ├── safety_toolkit.dart
│   │   │   └── content_violation.dart
│   │   ├── value_objects/
│   │   │   ├── report_type.dart
│   │   │   └── violation_severity.dart
│   │   ├── repositories/
│   │   │   └── moderation_repository.dart
│   │   └── services/
│   │       ├── content_moderator.dart
│   │       └── user_blocker.dart
│   ├── application/
│   └── infrastructure/
│
└── analytics/
    ├── domain/
    │   ├── aggregates/
    │   │   └── user_analytics.dart
    │   ├── entities/
    │   │   ├── swipe_pattern.dart
    │   │   ├── match_rate.dart
    │   │   ├── message_engagement.dart
    │   │   ├── profile_performance.dart
    │   │   └── usage_metrics.dart
    │   ├── repositories/
    │   │   └── analytics_repository.dart
    │   └── services/
    │       └── insight_generator.dart
    ├── application/
    └── infrastructure/
```

### Features (UI) 구조

```
lib/features/
├── swipe/
│   ├── pages/
│   │   └── swipe_page.dart
│   ├── widgets/
│   │   ├── swipeable_card_stack.dart
│   │   ├── profile_card.dart
│   │   ├── action_buttons.dart
│   │   ├── rewind_button.dart
│   │   ├── super_like_button.dart
│   │   ├── boost_button.dart
│   │   ├── photo_carousel.dart
│   │   └── profile_details_sheet.dart
│   └── providers/
│       ├── swipe_provider.dart
│       └── discovery_provider.dart
│
├── matches/
│   ├── pages/
│   │   └── matches_page.dart
│   ├── widgets/
│   │   ├── new_matches_section.dart
│   │   ├── messages_section.dart
│   │   ├── match_tile.dart
│   │   ├── likes_you_grid.dart
│   │   └── top_picks_section.dart
│   └── providers/
│       └── matches_provider.dart
│
├── chat/
│   ├── pages/
│   │   └── chat_page.dart
│   ├── widgets/
│   │   ├── chat_header.dart
│   │   ├── message_list.dart
│   │   ├── message_bubble.dart
│   │   ├── message_input.dart
│   │   ├── gif_picker.dart
│   │   ├── safety_tips.dart
│   │   └── match_expired_banner.dart
│   └── providers/
│       └── chat_provider.dart
│
├── profile_editor/
│   ├── pages/
│   │   ├── edit_profile_page.dart
│   │   └── media_editor_page.dart
│   ├── widgets/
│   │   ├── photo_grid_editor.dart
│   │   ├── bio_editor.dart
│   │   ├── interests_selector.dart
│   │   ├── lifestyle_editor.dart
│   │   ├── prompt_selector.dart
│   │   └── smart_photos_toggle.dart
│   └── providers/
│       └── profile_editor_provider.dart
│
├── explore/
│   ├── pages/
│   │   └── explore_page.dart
│   ├── widgets/
│   │   ├── top_picks_grid.dart
│   │   ├── passport_map.dart
│   │   ├── see_who_likes_you.dart
│   │   └── boost_timer.dart
│   └── providers/
│       └── explore_provider.dart
│
├── settings/
│   ├── pages/
│   │   ├── settings_page.dart
│   │   ├── discovery_settings_page.dart
│   │   └── safety_center_page.dart
│   ├── widgets/
│   │   ├── age_range_slider.dart
│   │   ├── distance_slider.dart
│   │   ├── show_me_selector.dart
│   │   ├── notification_preferences.dart
│   │   └── account_management.dart
│   └── providers/
│       └── settings_provider.dart
│
└── onboarding/
    ├── pages/
    │   ├── welcome_page.dart
    │   ├── phone_verification_page.dart
    │   ├── profile_setup_page.dart
    │   └── permissions_page.dart
    ├── widgets/
    │   ├── photo_uploader.dart
    │   ├── interest_chips.dart
    │   └── rules_agreement.dart
    └── providers/
        └── onboarding_provider.dart
```

### 매칭 알고리즘 인프라

```
lib/infrastructure/matching/
├── algorithm/
│   ├── elo_rating_system.dart
│   ├── compatibility_scorer.dart
│   └── activity_based_ranking.dart
├── realtime/
│   ├── swipe_synchronizer.dart
│   └── match_notifier.dart
└── cache/
    ├── profile_cache.dart
    └── discovery_queue.dart
```

### 틴더의 특별 고려사항

1. **실시간 매칭 시스템**

   - 동시 스와이프 감지
   - 즉각적인 매치 알림
   - 스와이프 큐 관리
   - 중복 프로필 방지

2. **추천 알고리즘**

   - ELO 기반 매력도 점수
   - 활동 패턴 분석
   - 위치 기반 필터링
   - 선호도 학습

3. **안전 기능**

   - 사진/프로필 검증
   - 부적절한 콘텐츠 감지
   - 신고/차단 시스템
   - 안전 센터

4. **프리미엄 기능**

   - 무제한 스와이프
   - 부스트/슈퍼라이크
   - 패스포트 (위치 변경)
   - 좋아요 확인

5. **참여 유도**
   - 일일 스와이프 제한
   - 매치 유효기간
   - 프로필 최적화 팁
   - 활동 기반 노출
