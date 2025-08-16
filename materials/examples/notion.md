## 노션(Notion) 같은 올인원 워크스페이스 앱 바운디드 컨텍스트 설계

### 전체 컨텍스트 맵

```
lib/
├── contexts/
│   ├── identity/              # 사용자 인증 및 계정
│   ├── workspace/             # 워크스페이스 및 팀 관리
│   ├── content/               # 페이지, 블록 에디터
│   ├── database/              # 데이터베이스 기능
│   ├── collaboration/         # 실시간 협업
│   ├── permission/            # 권한 및 공유
│   ├── template/              # 템플릿 관리
│   ├── integration/           # 외부 서비스 통합
│   ├── ai_assistant/          # AI 기능
│   ├── search/                # 검색 및 인덱싱
│   ├── sync/                  # 동기화 및 오프라인
│   └── analytics/             # 사용 분석
│
├── features/
│   ├── editor/                # 블록 에디터
│   ├── database_views/        # 테이블, 칸반, 갤러리 등
│   ├── sidebar/               # 사이드바 네비게이션
│   ├── quick_find/            # 빠른 검색
│   └── settings/              # 설정
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
│   │   │   ├── workspace_membership.dart
│   │   │   └── subscription_plan.dart
│   │   ├── value_objects/
│   │   │   ├── email.dart
│   │   │   ├── user_id.dart
│   │   │   └── avatar_url.dart
│   │   └── repositories/
│   │       └── user_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── workspace/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── workspace.dart
│   │   │   └── team_space.dart
│   │   ├── entities/
│   │   │   ├── workspace_member.dart
│   │   │   ├── workspace_settings.dart
│   │   │   ├── guest_access.dart
│   │   │   └── workspace_plan.dart
│   │   ├── value_objects/
│   │   │   ├── workspace_id.dart
│   │   │   ├── workspace_name.dart
│   │   │   └── member_role.dart
│   │   ├── repositories/
│   │   │   └── workspace_repository.dart
│   │   └── services/
│   │       └── workspace_provisioner.dart
│   ├── application/
│   └── infrastructure/
│
├── content/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── page.dart
│   │   │   └── block.dart
│   │   ├── entities/
│   │   │   ├── text_block.dart
│   │   │   ├── heading_block.dart
│   │   │   ├── list_block.dart
│   │   │   ├── toggle_block.dart
│   │   │   ├── code_block.dart
│   │   │   ├── image_block.dart
│   │   │   ├── video_block.dart
│   │   │   ├── embed_block.dart
│   │   │   ├── equation_block.dart
│   │   │   ├── divider_block.dart
│   │   │   ├── callout_block.dart
│   │   │   ├── quote_block.dart
│   │   │   ├── bookmark_block.dart
│   │   │   ├── file_block.dart
│   │   │   ├── synced_block.dart
│   │   │   └── table_of_contents_block.dart
│   │   ├── value_objects/
│   │   │   ├── page_id.dart
│   │   │   ├── block_id.dart
│   │   │   ├── block_type.dart
│   │   │   ├── page_icon.dart
│   │   │   └── page_cover.dart
│   │   ├── repositories/
│   │   │   ├── page_repository.dart
│   │   │   └── block_repository.dart
│   │   └── services/
│   │       ├── block_factory.dart
│   │       └── content_transformer.dart
│   ├── application/
│   └── infrastructure/
│
├── database/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── database.dart
│   │   │   └── database_view.dart
│   │   ├── entities/
│   │   │   ├── database_property.dart
│   │   │   ├── database_row.dart
│   │   │   ├── property_value.dart
│   │   │   ├── filter.dart
│   │   │   ├── sort.dart
│   │   │   ├── group.dart
│   │   │   └── formula.dart
│   │   ├── value_objects/
│   │   │   ├── property_type.dart
│   │   │   ├── view_type.dart
│   │   │   ├── relation_type.dart
│   │   │   └── rollup_type.dart
│   │   ├── repositories/
│   │   │   ├── database_repository.dart
│   │   │   └── view_repository.dart
│   │   └── services/
│   │       ├── formula_evaluator.dart
│   │       ├── rollup_calculator.dart
│   │       └── relation_resolver.dart
│   ├── application/
│   └── infrastructure/
│
├── collaboration/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── collaboration_session.dart
│   │   │   └── cursor_presence.dart
│   │   ├── entities/
│   │   │   ├── active_user.dart
│   │   │   ├── cursor_position.dart
│   │   │   ├── selection_range.dart
│   │   │   ├── comment_thread.dart
│   │   │   └── mention.dart
│   │   ├── value_objects/
│   │   │   ├── session_id.dart
│   │   │   └── cursor_color.dart
│   │   ├── repositories/
│   │   │   └── collaboration_repository.dart
│   │   └── services/
│   │       ├── conflict_resolver.dart
│   │       └── operation_transformer.dart
│   ├── application/
│   └── infrastructure/
│
├── permission/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── access_control.dart
│   │   ├── entities/
│   │   │   ├── permission_level.dart
│   │   │   ├── share_link.dart
│   │   │   ├── guest_permission.dart
│   │   │   └── permission_group.dart
│   │   ├── value_objects/
│   │   │   ├── permission_type.dart
│   │   │   └── share_token.dart
│   │   ├── repositories/
│   │   │   └── permission_repository.dart
│   │   └── services/
│   │       └── permission_evaluator.dart
│   ├── application/
│   └── infrastructure/
│
├── template/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── template.dart
│   │   │   └── template_gallery.dart
│   │   ├── entities/
│   │   │   ├── template_category.dart
│   │   │   ├── template_preview.dart
│   │   │   └── template_usage.dart
│   │   ├── value_objects/
│   │   │   └── template_id.dart
│   │   ├── repositories/
│   │   │   └── template_repository.dart
│   │   └── services/
│   │       └── template_duplicator.dart
│   ├── application/
│   └── infrastructure/
│
├── integration/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── integration.dart
│   │   ├── entities/
│   │   │   ├── api_token.dart
│   │   │   ├── webhook.dart
│   │   │   ├── embed_provider.dart
│   │   │   └── import_source.dart
│   │   ├── value_objects/
│   │   │   └── integration_type.dart
│   │   ├── repositories/
│   │   │   └── integration_repository.dart
│   │   └── services/
│   │       ├── embed_resolver.dart
│   │       └── import_processor.dart
│   ├── application/
│   └── infrastructure/
│
├── ai_assistant/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── ai_session.dart
│   │   ├── entities/
│   │   │   ├── ai_prompt.dart
│   │   │   ├── ai_response.dart
│   │   │   └── ai_action.dart
│   │   ├── value_objects/
│   │   │   └── ai_model_type.dart
│   │   ├── repositories/
│   │   │   └── ai_repository.dart
│   │   └── services/
│   │       ├── ai_processor.dart
│   │       └── content_generator.dart
│   ├── application/
│   └── infrastructure/
│
├── search/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── search_index.dart
│   │   ├── entities/
│   │   │   ├── search_result.dart
│   │   │   ├── search_scope.dart
│   │   │   └── recent_search.dart
│   │   ├── value_objects/
│   │   │   └── search_query.dart
│   │   ├── repositories/
│   │   │   └── search_repository.dart
│   │   └── services/
│   │       └── indexing_service.dart
│   ├── application/
│   └── infrastructure/
│
├── sync/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── sync_state.dart
│   │   ├── entities/
│   │   │   ├── sync_operation.dart
│   │   │   ├── offline_queue.dart
│   │   │   └── conflict_resolution.dart
│   │   ├── value_objects/
│   │   │   └── sync_status.dart
│   │   ├── repositories/
│   │   │   └── sync_repository.dart
│   │   └── services/
│   │       └── sync_engine.dart
│   ├── application/
│   └── infrastructure/
│
└── analytics/
    ├── domain/
    │   ├── aggregates/
    │   │   └── workspace_analytics.dart
    │   ├── entities/
    │   │   ├── page_analytics.dart
    │   │   ├── user_activity.dart
    │   │   └── content_insights.dart
    │   ├── repositories/
    │   │   └── analytics_repository.dart
    │   └── services/
    │       └── analytics_tracker.dart
    ├── application/
    └── infrastructure/
```

### Features (UI) 구조

```
lib/features/
├── editor/
│   ├── pages/
│   │   └── editor_page.dart
│   ├── widgets/
│   │   ├── block_editor.dart
│   │   ├── block_toolbar.dart
│   │   ├── slash_menu.dart
│   │   ├── inline_toolbar.dart
│   │   ├── drag_handle.dart
│   │   └── block_widgets/
│   │       ├── text_block_widget.dart
│   │       ├── heading_block_widget.dart
│   │       ├── database_block_widget.dart
│   │       └── ... (각 블록 타입별 위젯)
│   └── providers/
│       ├── editor_state_provider.dart
│       └── selection_provider.dart
│
├── database_views/
│   ├── widgets/
│   │   ├── table_view/
│   │   │   ├── table_view.dart
│   │   │   ├── table_header.dart
│   │   │   └── table_cell.dart
│   │   ├── board_view/
│   │   │   ├── kanban_board.dart
│   │   │   ├── kanban_column.dart
│   │   │   └── kanban_card.dart
│   │   ├── gallery_view/
│   │   │   └── gallery_grid.dart
│   │   ├── calendar_view/
│   │   │   └── calendar_view.dart
│   │   ├── timeline_view/
│   │   │   └── gantt_chart.dart
│   │   └── list_view/
│   │       └── list_view.dart
│   └── providers/
│       └── database_view_provider.dart
│
├── sidebar/
│   ├── widgets/
│   │   ├── workspace_switcher.dart
│   │   ├── page_tree.dart
│   │   ├── favorites_section.dart
│   │   ├── private_section.dart
│   │   ├── shared_section.dart
│   │   └── trash_section.dart
│   └── providers/
│       └── sidebar_provider.dart
│
├── quick_find/
│   ├── widgets/
│   │   ├── quick_find_modal.dart
│   │   ├── search_input.dart
│   │   └── search_results.dart
│   └── providers/
│       └── quick_find_provider.dart
│
└── sharing/
    ├── widgets/
    │   ├── share_modal.dart
    │   ├── permission_selector.dart
    │   └── share_link_generator.dart
    └── providers/
        └── sharing_provider.dart
```

### 블록 기반 에디터 인프라

```
lib/infrastructure/editor/
├── block_system/
│   ├── block_renderer.dart
│   ├── block_serializer.dart
│   └── block_deserializer.dart
├── operations/
│   ├── insert_operation.dart
│   ├── delete_operation.dart
│   ├── update_operation.dart
│   └── move_operation.dart
├── selection/
│   ├── selection_manager.dart
│   └── range_calculator.dart
└── undo_redo/
    ├── history_manager.dart
    └── operation_stack.dart
```

### 노션의 특별 고려사항

1. **블록 기반 에디터**

   - 다양한 블록 타입 지원
   - 드래그 앤 드롭
   - 중첩 구조
   - 실시간 협업 편집

2. **데이터베이스 기능**

   - 다양한 뷰 타입
   - 속성 타입 (텍스트, 숫자, 날짜, 관계형 등)
   - 필터, 정렬, 그룹화
   - 수식 및 롤업

3. **권한 관리**

   - 페이지별 세밀한 권한
   - 게스트 접근
   - 공유 링크

4. **오프라인 지원**

   - 로컬 스토리지
   - 충돌 해결
   - 동기화 큐

5. **확장성**
   - API 플랫폼
   - 임베드 지원
   - 템플릿 생태계
