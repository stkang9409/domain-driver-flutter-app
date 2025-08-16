## 소셜미디어(Instagram-like) 앱 바운디드 컨텍스트 설계

### 전체 컨텍스트 맵

```
lib/
├── contexts/
│   ├── identity/              # 사용자 인증 및 계정
│   ├── profile/               # 프로필 및 설정
│   ├── content/               # 포스트, 스토리, 릴스
│   ├── social/                # 팔로우, 좋아요, 댓글
│   ├── messaging/             # Direct Messages
│   ├── discovery/             # 탐색, 검색, 추천
│   ├── notification/          # 알림
│   ├── live/                  # 라이브 스트리밍
│   ├── commerce/              # 쇼핑 기능
│   ├── advertising/           # 광고 시스템
│   ├── moderation/            # 컨텐츠 검토 및 신고
│   └── analytics/             # 인사이트 및 분석
│
├── features/
│   ├── feed/                  # 홈 피드
│   ├── explore/               # 탐색 탭
│   ├── reels/                 # 릴스 탭
│   ├── shop/                  # 쇼핑 탭
│   ├── profile_view/          # 프로필 화면
│   ├── post_creation/         # 게시물 작성
│   ├── story_viewer/          # 스토리 뷰어
│   └── direct_inbox/          # DM 인박스
│
└── shared/
```

### 상세 디렉토리 구조

```
lib/contexts/
├── identity/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── account.dart
│   │   ├── entities/
│   │   │   ├── credentials.dart
│   │   │   ├── device_session.dart
│   │   │   └── two_factor_auth.dart
│   │   ├── value_objects/
│   │   │   ├── email.dart
│   │   │   ├── phone_number.dart
│   │   │   └── username.dart
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
│   │   │   ├── profile_info.dart
│   │   │   ├── profile_stats.dart
│   │   │   ├── privacy_settings.dart
│   │   │   └── account_type.dart
│   │   ├── value_objects/
│   │   │   ├── bio.dart
│   │   │   ├── profile_link.dart
│   │   │   └── profile_category.dart
│   │   └── repositories/
│   │       └── profile_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── content/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── post.dart
│   │   │   ├── story.dart
│   │   │   ├── reel.dart
│   │   │   └── igtv.dart
│   │   ├── entities/
│   │   │   ├── media_item.dart
│   │   │   ├── caption.dart
│   │   │   ├── location_tag.dart
│   │   │   ├── user_tag.dart
│   │   │   ├── hashtag.dart
│   │   │   └── filter.dart
│   │   ├── value_objects/
│   │   │   ├── content_id.dart
│   │   │   ├── media_type.dart
│   │   │   ├── aspect_ratio.dart
│   │   │   └── visibility.dart
│   │   ├── repositories/
│   │   │   ├── post_repository.dart
│   │   │   ├── story_repository.dart
│   │   │   └── reel_repository.dart
│   │   └── services/
│   │       ├── media_processor.dart
│   │       └── content_moderator.dart
│   ├── application/
│   └── infrastructure/
│
├── social/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── social_graph.dart
│   │   │   ├── interaction.dart
│   │   │   └── comment_thread.dart
│   │   ├── entities/
│   │   │   ├── follow_relationship.dart
│   │   │   ├── like.dart
│   │   │   ├── comment.dart
│   │   │   ├── mention.dart
│   │   │   ├── save.dart
│   │   │   └── share.dart
│   │   ├── value_objects/
│   │   │   ├── follow_status.dart
│   │   │   └── interaction_type.dart
│   │   ├── repositories/
│   │   │   ├── follow_repository.dart
│   │   │   ├── interaction_repository.dart
│   │   │   └── comment_repository.dart
│   │   └── services/
│   │       └── social_graph_service.dart
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
│   │   │   ├── media_message.dart
│   │   │   ├── voice_message.dart
│   │   │   ├── disappearing_message.dart
│   │   │   └── reaction.dart
│   │   ├── value_objects/
│   │   │   ├── conversation_id.dart
│   │   │   └── message_status.dart
│   │   └── repositories/
│   │       ├── conversation_repository.dart
│   │       └── message_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── discovery/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── search_index.dart
│   │   │   └── recommendation_engine.dart
│   │   ├── entities/
│   │   │   ├── search_result.dart
│   │   │   ├── trending_topic.dart
│   │   │   ├── suggested_user.dart
│   │   │   └── content_recommendation.dart
│   │   ├── value_objects/
│   │   │   ├── search_query.dart
│   │   │   └── trending_score.dart
│   │   ├── repositories/
│   │   │   ├── search_repository.dart
│   │   │   └── recommendation_repository.dart
│   │   └── services/
│   │       ├── search_engine.dart
│   │       └── recommendation_algorithm.dart
│   ├── application/
│   └── infrastructure/
│
├── notification/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── notification_center.dart
│   │   ├── entities/
│   │   │   ├── push_notification.dart
│   │   │   ├── in_app_notification.dart
│   │   │   └── notification_preference.dart
│   │   ├── value_objects/
│   │   │   └── notification_type.dart
│   │   └── repositories/
│   │       └── notification_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── live/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── live_stream.dart
│   │   ├── entities/
│   │   │   ├── stream_viewer.dart
│   │   │   ├── live_comment.dart
│   │   │   └── stream_invitation.dart
│   │   ├── value_objects/
│   │   │   ├── stream_id.dart
│   │   │   └── stream_quality.dart
│   │   ├── repositories/
│   │   │   └── live_stream_repository.dart
│   │   └── services/
│   │       └── streaming_service.dart
│   ├── application/
│   └── infrastructure/
│
├── commerce/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── product_catalog.dart
│   │   │   └── shop_profile.dart
│   │   ├── entities/
│   │   │   ├── product.dart
│   │   │   ├── product_tag.dart
│   │   │   └── shopping_collection.dart
│   │   ├── value_objects/
│   │   │   ├── product_id.dart
│   │   │   └── price.dart
│   │   └── repositories/
│   │       └── product_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── advertising/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── ad_campaign.dart
│   │   │   └── promoted_content.dart
│   │   ├── entities/
│   │   │   ├── ad_creative.dart
│   │   │   ├── target_audience.dart
│   │   │   └── ad_placement.dart
│   │   ├── value_objects/
│   │   │   └── budget.dart
│   │   └── repositories/
│   │       └── ad_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── moderation/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── content_report.dart
│   │   ├── entities/
│   │   │   ├── violation.dart
│   │   │   ├── community_guideline.dart
│   │   │   └── appeal.dart
│   │   ├── value_objects/
│   │   │   └── violation_type.dart
│   │   ├── repositories/
│   │   │   └── moderation_repository.dart
│   │   └── services/
│   │       ├── content_scanner.dart
│   │       └── automated_moderator.dart
│   ├── application/
│   └── infrastructure/
│
└── analytics/
    ├── domain/
    │   ├── aggregates/
    │   │   ├── insights.dart
    │   │   └── audience_analytics.dart
    │   ├── entities/
    │   │   ├── post_analytics.dart
    │   │   ├── story_analytics.dart
    │   │   ├── follower_demographics.dart
    │   │   └── engagement_metrics.dart
    │   ├── value_objects/
    │   │   ├── metric_type.dart
    │   │   └── time_period.dart
    │   └── repositories/
    │       └── analytics_repository.dart
    ├── application/
    └── infrastructure/
```

### Features (UI) 구조

```
lib/features/
├── feed/
│   ├── pages/
│   │   └── home_feed_page.dart
│   ├── widgets/
│   │   ├── post_card.dart
│   │   ├── story_carousel.dart
│   │   ├── suggested_posts.dart
│   │   └── pull_to_refresh.dart
│   └── providers/
│       ├── feed_provider.dart
│       └── story_provider.dart
│
├── explore/
│   ├── pages/
│   │   └── explore_page.dart
│   ├── widgets/
│   │   ├── explore_grid.dart
│   │   ├── search_bar.dart
│   │   └── topic_chips.dart
│   └── providers/
│       └── explore_provider.dart
│
├── reels/
│   ├── pages/
│   │   └── reels_page.dart
│   ├── widgets/
│   │   ├── reel_player.dart
│   │   ├── reel_sidebar.dart
│   │   └── reel_info.dart
│   └── providers/
│       └── reels_provider.dart
│
├── post_creation/
│   ├── pages/
│   │   ├── camera_page.dart
│   │   ├── media_selection_page.dart
│   │   ├── edit_page.dart
│   │   └── share_page.dart
│   ├── widgets/
│   │   ├── filter_carousel.dart
│   │   ├── caption_input.dart
│   │   └── tag_people.dart
│   └── providers/
│       └── post_creation_provider.dart
│
├── profile_view/
│   ├── pages/
│   │   └── profile_page.dart
│   ├── widgets/
│   │   ├── profile_header.dart
│   │   ├── profile_stats.dart
│   │   ├── profile_grid.dart
│   │   └── profile_tabs.dart
│   └── providers/
│       └── profile_provider.dart
│
└── story_viewer/
    ├── pages/
    │   └── story_viewer_page.dart
    ├── widgets/
    │   ├── story_progress_bar.dart
    │   ├── story_reply_input.dart
    │   └── story_interactions.dart
    └── providers/
        └── story_viewer_provider.dart
```

### 소셜미디어 앱의 특별 고려사항

1. **확장성**

   - 대용량 미디어 처리 (CDN 활용)
   - 피드 알고리즘 최적화
   - 실시간 상호작용 처리

2. **성능 최적화**

   - 이미지/비디오 캐싱
   - 피드 프리로딩
   - 무한 스크롤 최적화

3. **개인화**

   - 추천 알고리즘
   - 맞춤형 피드
   - 타겟팅 광고

4. **콘텐츠 보호**
   - 저작권 관리
   - 프라이버시 설정
   - 콘텐츠 모더레이션
