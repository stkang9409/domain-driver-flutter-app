## 구글폼(Google Forms) 같은 서베이 앱 바운디드 컨텍스트 설계

### 전체 컨텍스트 맵

```
lib/
├── contexts/
│   ├── identity/              # 사용자 인증 및 계정
│   ├── form_builder/          # 폼 생성 및 편집
│   ├── question/              # 질문 타입 및 관리
│   ├── response/              # 응답 수집 및 저장
│   ├── analytics/             # 응답 분석 및 리포트
│   ├── distribution/          # 폼 배포 및 공유
│   ├── template/              # 폼 템플릿
│   ├── validation/            # 응답 검증 및 로직
│   ├── integration/           # 외부 서비스 통합
│   └── permission/            # 접근 권한 관리
│
├── features/
│   ├── form_editor/           # 폼 편집기
│   ├── form_preview/          # 폼 미리보기
│   ├── form_response/         # 응답 화면
│   ├── response_viewer/       # 응답 보기
│   ├── analytics_dashboard/   # 분석 대시보드
│   └── form_list/             # 폼 목록
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
│   │   │   ├── user_profile.dart
│   │   │   └── account_settings.dart
│   │   ├── value_objects/
│   │   │   ├── email.dart
│   │   │   └── user_id.dart
│   │   └── repositories/
│   │       └── user_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── form_builder/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── form.dart
│   │   ├── entities/
│   │   │   ├── form_section.dart
│   │   │   ├── form_settings.dart
│   │   │   ├── form_theme.dart
│   │   │   ├── confirmation_message.dart
│   │   │   └── form_metadata.dart
│   │   ├── value_objects/
│   │   │   ├── form_id.dart
│   │   │   ├── form_title.dart
│   │   │   ├── form_description.dart
│   │   │   └── form_status.dart
│   │   ├── repositories/
│   │   │   └── form_repository.dart
│   │   └── services/
│   │       ├── form_duplicator.dart
│   │       └── form_validator.dart
│   ├── application/
│   └── infrastructure/
│
├── question/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── question.dart
│   │   ├── entities/
│   │   │   ├── short_answer_question.dart
│   │   │   ├── paragraph_question.dart
│   │   │   ├── multiple_choice_question.dart
│   │   │   ├── checkbox_question.dart
│   │   │   ├── dropdown_question.dart
│   │   │   ├── file_upload_question.dart
│   │   │   ├── linear_scale_question.dart
│   │   │   ├── grid_question.dart
│   │   │   ├── date_question.dart
│   │   │   ├── time_question.dart
│   │   │   ├── rating_question.dart
│   │   │   └── ranking_question.dart
│   │   ├── value_objects/
│   │   │   ├── question_id.dart
│   │   │   ├── question_type.dart
│   │   │   ├── question_text.dart
│   │   │   └── question_order.dart
│   │   ├── repositories/
│   │   │   └── question_repository.dart
│   │   └── services/
│   │       └── question_factory.dart
│   ├── application/
│   └── infrastructure/
│
├── response/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── form_response.dart
│   │   │   └── response_session.dart
│   │   ├── entities/
│   │   │   ├── answer.dart
│   │   │   ├── respondent_info.dart
│   │   │   ├── file_attachment.dart
│   │   │   └── response_metadata.dart
│   │   ├── value_objects/
│   │   │   ├── response_id.dart
│   │   │   ├── submission_time.dart
│   │   │   └── response_status.dart
│   │   ├── repositories/
│   │   │   └── response_repository.dart
│   │   └── services/
│   │       ├── response_validator.dart
│   │       └── response_processor.dart
│   ├── application/
│   └── infrastructure/
│
├── analytics/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── response_analytics.dart
│   │   │   └── form_statistics.dart
│   │   ├── entities/
│   │   │   ├── question_summary.dart
│   │   │   ├── response_chart.dart
│   │   │   ├── response_trend.dart
│   │   │   ├── completion_rate.dart
│   │   │   └── export_format.dart
│   │   ├── value_objects/
│   │   │   ├── chart_type.dart
│   │   │   └── date_range.dart
│   │   ├── repositories/
│   │   │   └── analytics_repository.dart
│   │   └── services/
│   │       ├── data_aggregator.dart
│   │       ├── chart_generator.dart
│   │       └── export_service.dart
│   ├── application/
│   └── infrastructure/
│
├── distribution/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── form_distribution.dart
│   │   ├── entities/
│   │   │   ├── share_link.dart
│   │   │   ├── email_invitation.dart
│   │   │   ├── embed_code.dart
│   │   │   ├── qr_code.dart
│   │   │   └── access_control.dart
│   │   ├── value_objects/
│   │   │   ├── share_token.dart
│   │   │   ├── expiry_date.dart
│   │   │   └── response_limit.dart
│   │   ├── repositories/
│   │   │   └── distribution_repository.dart
│   │   └── services/
│   │       ├── link_generator.dart
│   │       └── invitation_sender.dart
│   ├── application/
│   └── infrastructure/
│
├── template/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── form_template.dart
│   │   ├── entities/
│   │   │   ├── template_category.dart
│   │   │   ├── template_preview.dart
│   │   │   └── template_metadata.dart
│   │   ├── value_objects/
│   │   │   └── template_id.dart
│   │   ├── repositories/
│   │   │   └── template_repository.dart
│   │   └── services/
│   │       └── template_installer.dart
│   ├── application/
│   └── infrastructure/
│
├── validation/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── validation_rule.dart
│   │   ├── entities/
│   │   │   ├── required_rule.dart
│   │   │   ├── pattern_rule.dart
│   │   │   ├── length_rule.dart
│   │   │   ├── number_range_rule.dart
│   │   │   ├── date_range_rule.dart
│   │   │   ├── conditional_logic.dart
│   │   │   └── skip_logic.dart
│   │   ├── value_objects/
│   │   │   ├── rule_type.dart
│   │   │   └── error_message.dart
│   │   ├── repositories/
│   │   │   └── validation_repository.dart
│   │   └── services/
│   │       └── validation_engine.dart
│   ├── application/
│   └── infrastructure/
│
├── integration/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── integration_config.dart
│   │   ├── entities/
│   │   │   ├── google_sheets_integration.dart
│   │   │   ├── webhook_integration.dart
│   │   │   ├── email_notification.dart
│   │   │   └── api_integration.dart
│   │   ├── value_objects/
│   │   │   └── integration_type.dart
│   │   ├── repositories/
│   │   │   └── integration_repository.dart
│   │   └── services/
│   │       └── integration_executor.dart
│   ├── application/
│   └── infrastructure/
│
└── permission/
    ├── domain/
    │   ├── aggregates/
    │   │   └── form_permission.dart
    │   ├── entities/
    │   │   ├── collaborator.dart
    │   │   ├── permission_level.dart
    │   │   └── anonymous_access.dart
    │   ├── value_objects/
    │   │   └── permission_type.dart
    │   ├── repositories/
    │   │   └── permission_repository.dart
    │   └── services/
    │       └── permission_checker.dart
    ├── application/
    └── infrastructure/
```

### Features (UI) 구조

```
lib/features/
├── form_editor/
│   ├── pages/
│   │   └── form_editor_page.dart
│   ├── widgets/
│   │   ├── question_list.dart
│   │   ├── question_card.dart
│   │   ├── question_toolbar.dart
│   │   ├── add_question_menu.dart
│   │   ├── question_settings_panel.dart
│   │   ├── form_settings_panel.dart
│   │   └── question_type_widgets/
│   │       ├── short_answer_widget.dart
│   │       ├── multiple_choice_widget.dart
│   │       ├── checkbox_widget.dart
│   │       ├── dropdown_widget.dart
│   │       ├── linear_scale_widget.dart
│   │       ├── grid_widget.dart
│   │       └── file_upload_widget.dart
│   └── providers/
│       ├── form_editor_provider.dart
│       └── question_provider.dart
│
├── form_preview/
│   ├── pages/
│   │   └── form_preview_page.dart
│   ├── widgets/
│   │   ├── preview_header.dart
│   │   ├── preview_question.dart
│   │   └── preview_navigation.dart
│   └── providers/
│       └── preview_provider.dart
│
├── form_response/
│   ├── pages/
│   │   └── form_response_page.dart
│   ├── widgets/
│   │   ├── response_header.dart
│   │   ├── response_progress.dart
│   │   ├── response_question.dart
│   │   ├── response_navigation.dart
│   │   └── submit_button.dart
│   └── providers/
│       └── response_provider.dart
│
├── response_viewer/
│   ├── pages/
│   │   └── response_viewer_page.dart
│   ├── widgets/
│   │   ├── response_tabs.dart
│   │   ├── summary_view/
│   │   │   ├── summary_charts.dart
│   │   │   ├── question_summary_card.dart
│   │   │   └── response_statistics.dart
│   │   ├── individual_view/
│   │   │   ├── response_list.dart
│   │   │   ├── response_detail.dart
│   │   │   └── response_filters.dart
│   │   └── spreadsheet_view/
│   │       └── response_table.dart
│   └── providers/
│       └── response_viewer_provider.dart
│
├── analytics_dashboard/
│   ├── pages/
│   │   └── analytics_page.dart
│   ├── widgets/
│   │   ├── response_trend_chart.dart
│   │   ├── completion_rate_card.dart
│   │   ├── average_time_card.dart
│   │   ├── export_button.dart
│   │   └── date_range_selector.dart
│   └── providers/
│       └── analytics_provider.dart
│
├── form_list/
│   ├── pages/
│   │   └── form_list_page.dart
│   ├── widgets/
│   │   ├── form_grid.dart
│   │   ├── form_card.dart
│   │   ├── form_filters.dart
│   │   └── create_form_button.dart
│   └── providers/
│       └── form_list_provider.dart
│
└── sharing/
    ├── widgets/
    │   ├── share_modal.dart
    │   ├── share_link_generator.dart
    │   ├── collaborator_list.dart
    │   └── embed_code_generator.dart
    └── providers/
        └── sharing_provider.dart
```

### 응답 처리 인프라

```
lib/infrastructure/response/
├── storage/
│   ├── response_storage.dart
│   ├── file_storage.dart
│   └── response_cache.dart
├── validation/
│   ├── response_validator.dart
│   └── file_validator.dart
└── export/
    ├── csv_exporter.dart
    ├── excel_exporter.dart
    └── pdf_exporter.dart
```

### 구글폼의 특별 고려사항

1. **다양한 질문 타입**

   - 15개 이상의 질문 타입 지원
   - 커스텀 검증 규칙
   - 조건부 로직

2. **실시간 응답 수집**

   - 동시 다발적 응답 처리
   - 실시간 통계 업데이트
   - 응답 제한 관리

3. **분석 및 시각화**

   - 자동 차트 생성
   - 응답 요약
   - 데이터 내보내기

4. **접근성 및 반응형**

   - 모바일 최적화
   - 다국어 지원
   - 스크린 리더 지원

5. **통합 기능**
   - Google Sheets 연동
   - 이메일 알림
   - Webhook 지원
