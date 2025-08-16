## 듀오링고(Duolingo) 같은 게이미피케이션 언어 학습 앱 바운디드 컨텍스트 설계

### 전체 컨텍스트 맵

```
lib/
├── contexts/
│   ├── identity/              # 사용자 인증 및 프로필
│   ├── learning/              # 학습 콘텐츠 및 진도
│   ├── gamification/          # 게임화 요소 (포인트, 배지, 리그)
│   ├── assessment/            # 평가 및 실력 측정
│   ├── social/                # 소셜 기능 (친구, 리더보드)
│   ├── streak/                # 연속 학습 시스템
│   ├── shop/                  # 상점 및 아이템
│   ├── subscription/          # 구독 및 결제
│   ├── notification/          # 알림 및 리마인더
│   └── analytics/             # 학습 분석 및 인사이트
│
├── features/
│   ├── home/                  # 홈 화면
│   ├── lesson/                # 레슨 학습
│   ├── practice/              # 연습 모드
│   ├── profile/               # 프로필 및 성취
│   ├── leaderboard/           # 리더보드
│   └── shop/                  # 상점
│
└── shared/
```

### 상세 디렉토리 구조

```
lib/contexts/
├── identity/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── learner.dart
│   │   ├── entities/
│   │   │   ├── learner_profile.dart
│   │   │   ├── learning_preferences.dart
│   │   │   └── avatar.dart
│   │   ├── value_objects/
│   │   │   ├── username.dart
│   │   │   ├── learner_id.dart
│   │   │   └── language_pair.dart
│   │   └── repositories/
│   │       └── learner_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── learning/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── course.dart
│   │   │   ├── skill.dart
│   │   │   └── lesson.dart
│   │   ├── entities/
│   │   │   ├── exercise.dart
│   │   │   ├── word.dart
│   │   │   ├── sentence.dart
│   │   │   ├── grammar_rule.dart
│   │   │   ├── audio_clip.dart
│   │   │   ├── story.dart
│   │   │   └── checkpoint.dart
│   │   ├── value_objects/
│   │   │   ├── course_id.dart
│   │   │   ├── skill_level.dart
│   │   │   ├── difficulty.dart
│   │   │   └── exercise_type.dart
│   │   ├── repositories/
│   │   │   ├── course_repository.dart
│   │   │   ├── skill_repository.dart
│   │   │   └── lesson_repository.dart
│   │   └── services/
│   │       ├── content_selector.dart
│   │       ├── spaced_repetition_engine.dart
│   │       └── adaptive_learning_service.dart
│   ├── application/
│   └── infrastructure/
│
├── gamification/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── experience_system.dart
│   │   │   ├── achievement_system.dart
│   │   │   └── league_system.dart
│   │   ├── entities/
│   │   │   ├── experience_points.dart
│   │   │   ├── level.dart
│   │   │   ├── badge.dart
│   │   │   ├── achievement.dart
│   │   │   ├── league.dart
│   │   │   ├── league_tier.dart
│   │   │   ├── weekly_quest.dart
│   │   │   └── daily_goal.dart
│   │   ├── value_objects/
│   │   │   ├── xp_amount.dart
│   │   │   ├── badge_type.dart
│   │   │   ├── league_name.dart
│   │   │   └── quest_type.dart
│   │   ├── repositories/
│   │   │   ├── experience_repository.dart
│   │   │   ├── achievement_repository.dart
│   │   │   └── league_repository.dart
│   │   └── services/
│   │       ├── reward_calculator.dart
│   │       ├── league_promoter.dart
│   │       └── quest_generator.dart
│   ├── application/
│   └── infrastructure/
│
├── assessment/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── skill_assessment.dart
│   │   │   ├── placement_test.dart
│   │   │   └── progress_test.dart
│   │   ├── entities/
│   │   │   ├── test_question.dart
│   │   │   ├── answer_evaluation.dart
│   │   │   ├── skill_score.dart
│   │   │   └── proficiency_level.dart
│   │   ├── value_objects/
│   │   │   ├── score.dart
│   │   │   ├── accuracy_rate.dart
│   │   │   └── response_time.dart
│   │   ├── repositories/
│   │   │   └── assessment_repository.dart
│   │   └── services/
│   │       ├── scoring_engine.dart
│   │       ├── difficulty_adjuster.dart
│   │       └── mistake_analyzer.dart
│   ├── application/
│   └── infrastructure/
│
├── social/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── friend_network.dart
│   │   │   └── learning_club.dart
│   │   ├── entities/
│   │   │   ├── friend.dart
│   │   │   ├── friend_request.dart
│   │   │   ├── follow_relationship.dart
│   │   │   ├── club_member.dart
│   │   │   └── activity_feed.dart
│   │   ├── value_objects/
│   │   │   ├── friend_id.dart
│   │   │   └── club_id.dart
│   │   ├── repositories/
│   │   │   ├── friend_repository.dart
│   │   │   └── club_repository.dart
│   │   └── services/
│   │       └── friend_suggester.dart
│   ├── application/
│   └── infrastructure/
│
├── streak/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── streak_tracker.dart
│   │   ├── entities/
│   │   │   ├── daily_streak.dart
│   │   │   ├── streak_freeze.dart
│   │   │   ├── streak_repair.dart
│   │   │   └── streak_milestone.dart
│   │   ├── value_objects/
│   │   │   ├── streak_count.dart
│   │   │   └── streak_status.dart
│   │   ├── repositories/
│   │   │   └── streak_repository.dart
│   │   └── services/
│   │       ├── streak_calculator.dart
│   │       └── streak_protector.dart
│   ├── application/
│   └── infrastructure/
│
├── shop/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── shop_inventory.dart
│   │   │   └── user_inventory.dart
│   │   ├── entities/
│   │   │   ├── shop_item.dart
│   │   │   ├── power_up.dart
│   │   │   ├── outfit.dart
│   │   │   ├── gem_pack.dart
│   │   │   └── purchase_history.dart
│   │   ├── value_objects/
│   │   │   ├── gem_amount.dart
│   │   │   ├── item_price.dart
│   │   │   └── item_type.dart
│   │   ├── repositories/
│   │   │   ├── shop_repository.dart
│   │   │   └── inventory_repository.dart
│   │   └── services/
│   │       └── purchase_processor.dart
│   ├── application/
│   └── infrastructure/
│
├── subscription/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── subscription.dart
│   │   ├── entities/
│   │   │   ├── subscription_plan.dart
│   │   │   ├── subscription_benefits.dart
│   │   │   ├── family_plan.dart
│   │   │   └── trial_period.dart
│   │   ├── value_objects/
│   │   │   ├── plan_type.dart
│   │   │   └── billing_period.dart
│   │   ├── repositories/
│   │   │   └── subscription_repository.dart
│   │   └── services/
│   │       └── subscription_manager.dart
│   ├── application/
│   └── infrastructure/
│
├── notification/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── notification_settings.dart
│   │   ├── entities/
│   │   │   ├── practice_reminder.dart
│   │   │   ├── streak_reminder.dart
│   │   │   ├── achievement_notification.dart
│   │   │   └── motivational_message.dart
│   │   ├── value_objects/
│   │   │   └── reminder_time.dart
│   │   ├── repositories/
│   │   │   └── notification_repository.dart
│   │   └── services/
│   │       ├── reminder_scheduler.dart
│   │       └── message_personalizer.dart
│   ├── application/
│   └── infrastructure/
│
└── analytics/
    ├── domain/
    │   ├── aggregates/
    │   │   ├── learning_analytics.dart
    │   │   └── performance_metrics.dart
    │   ├── entities/
    │   │   ├── learning_session.dart
    │   │   ├── mistake_pattern.dart
    │   │   ├── strength_weakness.dart
    │   │   ├── time_spent.dart
    │   │   └── progress_report.dart
    │   ├── repositories/
    │   │   └── analytics_repository.dart
    │   └── services/
    │       ├── progress_tracker.dart
    │       └── insight_generator.dart
    ├── application/
    └── infrastructure/
```

### Features (UI) 구조

```
lib/features/
├── home/
│   ├── pages/
│   │   └── home_page.dart
│   ├── widgets/
│   │   ├── skill_tree.dart
│   │   ├── daily_goal_card.dart
│   │   ├── streak_display.dart
│   │   ├── heart_counter.dart
│   │   └── league_banner.dart
│   └── providers/
│       └── home_provider.dart
│
├── lesson/
│   ├── pages/
│   │   ├── lesson_intro_page.dart
│   │   ├── exercise_page.dart
│   │   └── lesson_complete_page.dart
│   ├── widgets/
│   │   ├── progress_bar.dart
│   │   ├── exercise_widgets/
│   │   │   ├── translation_exercise.dart
│   │   │   ├── listening_exercise.dart
│   │   │   ├── speaking_exercise.dart
│   │   │   ├── matching_exercise.dart
│   │   │   ├── fill_blank_exercise.dart
│   │   │   ├── word_bank_exercise.dart
│   │   │   └── multiple_choice_exercise.dart
│   │   ├── feedback_animation.dart
│   │   ├── combo_counter.dart
│   │   └── tip_modal.dart
│   └── providers/
│       ├── lesson_provider.dart
│       └── exercise_provider.dart
│
├── practice/
│   ├── pages/
│   │   └── practice_hub_page.dart
│   ├── widgets/
│   │   ├── practice_type_card.dart
│   │   ├── mistake_review.dart
│   │   └── timed_challenge.dart
│   └── providers/
│       └── practice_provider.dart
│
├── profile/
│   ├── pages/
│   │   └── profile_page.dart
│   ├── widgets/
│   │   ├── stats_overview.dart
│   │   ├── achievement_grid.dart
│   │   ├── streak_calendar.dart
│   │   ├── friend_activity.dart
│   │   └── progress_chart.dart
│   └── providers/
│       └── profile_provider.dart
│
├── leaderboard/
│   ├── pages/
│   │   └── leaderboard_page.dart
│   ├── widgets/
│   │   ├── league_header.dart
│   │   ├── rank_list.dart
│   │   ├── promotion_zone.dart
│   │   ├── demotion_zone.dart
│   │   └── friend_filter.dart
│   └── providers/
│       └── leaderboard_provider.dart
│
├── shop/
│   ├── pages/
│   │   └── shop_page.dart
│   ├── widgets/
│   │   ├── gem_balance.dart
│   │   ├── shop_tabs.dart
│   │   ├── item_grid.dart
│   │   ├── purchase_modal.dart
│   │   └── outfit_preview.dart
│   └── providers/
│       └── shop_provider.dart
│
└── stories/
    ├── pages/
    │   ├── story_list_page.dart
    │   └── story_reader_page.dart
    ├── widgets/
    │   ├── story_card.dart
    │   ├── story_progress.dart
    │   └── tap_translation.dart
    └── providers/
        └── story_provider.dart
```

### 게임화 시스템 인프라

```
lib/infrastructure/gamification/
├── animation/
│   ├── xp_animation_controller.dart
│   ├── achievement_animation.dart
│   └── combo_animation.dart
├── sound/
│   ├── sound_manager.dart
│   ├── correct_sound.dart
│   └── achievement_sound.dart
└── haptic/
    └── haptic_feedback_manager.dart
```

### 듀오링고의 특별 고려사항

1. **게이미피케이션 핵심**

   - XP 시스템과 레벨업
   - 연속 학습(Streak) 메커니즘
   - 리그 시스템과 경쟁
   - 즉각적인 피드백과 보상

2. **적응형 학습**

   - 실력에 따른 난이도 조절
   - 간격 반복 학습
   - 개인화된 복습 시스템
   - 약점 집중 학습

3. **참여 유도 전략**

   - 일일 목표 설정
   - 푸시 알림 최적화
   - 소셜 압박과 동기부여
   - 한정 하트 시스템

4. **콘텐츠 다양성**

   - 다양한 연습 문제 유형
   - 스토리 모드
   - 팟캐스트/오디오 레슨
   - 이벤트와 챌린지

5. **수익화 모델**
   - 프리미엄 구독 (Plus/Super)
   - 인앱 구매 (Gem)
   - 광고 시청 보상
   - 가족 플랜
