## 경매 앱 바운디드 컨텍스트 설계

### 전체 컨텍스트 맵

```
lib/
├── contexts/
│   ├── identity/              # 사용자 인증 및 계정
│   ├── auction/               # 경매 관리
│   ├── bidding/               # 입찰 시스템
│   ├── catalog/               # 상품 카탈로그
│   ├── payment/               # 결제 및 정산
│   ├── fulfillment/           # 배송 및 수령
│   ├── reputation/            # 평가 및 신뢰도
│   ├── notification/          # 알림 시스템
│   ├── verification/          # 판매자/상품 검증
│   └── dispute/               # 분쟁 해결
│
├── features/
│   ├── home/                  # 홈 화면
│   ├── auction_room/          # 경매 진행 화면
│   ├── listing/               # 상품 등록
│   ├── my_auctions/           # 내 경매 관리
│   ├── watchlist/             # 관심 목록
│   └── transaction_history/   # 거래 내역
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
│   │   │   ├── seller_account.dart
│   │   │   ├── buyer_account.dart
│   │   │   └── kyc_verification.dart
│   │   ├── value_objects/
│   │   │   ├── user_id.dart
│   │   │   ├── account_type.dart
│   │   │   └── verification_level.dart
│   │   └── repositories/
│   │       └── user_repository.dart
│   ├── application/
│   └── infrastructure/
│
├── auction/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── auction.dart
│   │   ├── entities/
│   │   │   ├── auction_settings.dart
│   │   │   ├── auction_schedule.dart
│   │   │   ├── reserve_price.dart
│   │   │   ├── buy_now_price.dart
│   │   │   ├── auction_extension.dart
│   │   │   └── auction_cancellation.dart
│   │   ├── value_objects/
│   │   │   ├── auction_id.dart
│   │   │   ├── auction_type.dart      # 일반, 비공개, 자선 등
│   │   │   ├── auction_status.dart
│   │   │   └── auction_duration.dart
│   │   ├── repositories/
│   │   │   └── auction_repository.dart
│   │   └── services/
│   │       ├── auction_scheduler.dart
│   │       └── auction_validator.dart
│   ├── application/
│   └── infrastructure/
│
├── bidding/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── bid.dart
│   │   │   └── bidding_session.dart
│   │   ├── entities/
│   │   │   ├── bid_increment.dart
│   │   │   ├── auto_bid.dart
│   │   │   ├── proxy_bid.dart
│   │   │   ├── bid_retraction.dart
│   │   │   └── sniping_protection.dart
│   │   ├── value_objects/
│   │   │   ├── bid_amount.dart
│   │   │   ├── bid_id.dart
│   │   │   └── bid_timestamp.dart
│   │   ├── repositories/
│   │   │   └── bid_repository.dart
│   │   └── services/
│   │       ├── bid_validator.dart
│   │       ├── bid_processor.dart
│   │       └── outbid_notifier.dart
│   ├── application/
│   └── infrastructure/
│
├── catalog/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── item.dart
│   │   ├── entities/
│   │   │   ├── item_description.dart
│   │   │   ├── item_condition.dart
│   │   │   ├── item_images.dart
│   │   │   ├── item_category.dart
│   │   │   ├── item_specification.dart
│   │   │   └── authenticity_certificate.dart
│   │   ├── value_objects/
│   │   │   ├── item_id.dart
│   │   │   ├── condition_grade.dart
│   │   │   └── category_path.dart
│   │   ├── repositories/
│   │   │   └── item_repository.dart
│   │   └── services/
│   │       ├── category_manager.dart
│   │       └── image_processor.dart
│   ├── application/
│   └── infrastructure/
│
├── payment/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   ├── transaction.dart
│   │   │   └── settlement.dart
│   │   ├── entities/
│   │   │   ├── payment_method.dart
│   │   │   ├── escrow_account.dart
│   │   │   ├── commission_fee.dart
│   │   │   ├── refund.dart
│   │   │   └── payout.dart
│   │   ├── value_objects/
│   │   │   ├── transaction_id.dart
│   │   │   ├── amount.dart
│   │   │   └── fee_structure.dart
│   │   ├── repositories/
│   │   │   └── payment_repository.dart
│   │   └── services/
│   │       ├── payment_processor.dart
│   │       ├── escrow_manager.dart
│   │       └── fee_calculator.dart
│   ├── application/
│   └── infrastructure/
│
├── fulfillment/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── shipment.dart
│   │   ├── entities/
│   │   │   ├── shipping_method.dart
│   │   │   ├── tracking_info.dart
│   │   │   ├── delivery_confirmation.dart
│   │   │   ├── return_request.dart
│   │   │   └── inspection_period.dart
│   │   ├── value_objects/
│   │   │   ├── shipment_id.dart
│   │   │   ├── tracking_number.dart
│   │   │   └── delivery_status.dart
│   │   ├── repositories/
│   │   │   └── fulfillment_repository.dart
│   │   └── services/
│   │       ├── shipping_calculator.dart
│   │       └── carrier_integration.dart
│   ├── application/
│   └── infrastructure/
│
├── reputation/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── user_reputation.dart
│   │   ├── entities/
│   │   │   ├── feedback.dart
│   │   │   ├── rating.dart
│   │   │   ├── trust_score.dart
│   │   │   ├── badge.dart
│   │   │   └── transaction_history.dart
│   │   ├── value_objects/
│   │   │   ├── rating_score.dart
│   │   │   └── feedback_type.dart
│   │   ├── repositories/
│   │   │   └── reputation_repository.dart
│   │   └── services/
│   │       └── trust_calculator.dart
│   ├── application/
│   └── infrastructure/
│
├── notification/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── notification_preferences.dart
│   │   ├── entities/
│   │   │   ├── bid_notification.dart
│   │   │   ├── auction_notification.dart
│   │   │   ├── watchlist_alert.dart
│   │   │   └── reminder.dart
│   │   ├── value_objects/
│   │   │   └── notification_channel.dart
│   │   ├── repositories/
│   │   │   └── notification_repository.dart
│   │   └── services/
│   │       └── notification_dispatcher.dart
│   ├── application/
│   └── infrastructure/
│
├── verification/
│   ├── domain/
│   │   ├── aggregates/
│   │   │   └── verification_request.dart
│   │   ├── entities/
│   │   │   ├── seller_verification.dart
│   │   │   ├── item_authentication.dart
│   │   │   ├── expert_review.dart
│   │   │   └── documentation.dart
│   │   ├── value_objects/
│   │   │   └── verification_status.dart
│   │   ├── repositories/
│   │   │   └── verification_repository.dart
│   │   └── services/
│   │       └── verification_processor.dart
│   ├── application/
│   └── infrastructure/
│
└── dispute/
    ├── domain/
    │   ├── aggregates/
    │   │   └── dispute_case.dart
    │   ├── entities/
    │   │   ├── dispute_reason.dart
    │   │   ├── evidence.dart
    │   │   ├── mediation.dart
    │   │   └── resolution.dart
    │   ├── value_objects/
    │   │   └── dispute_status.dart
    │   ├── repositories/
    │   │   └── dispute_repository.dart
    │   └── services/
    │       └── dispute_mediator.dart
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
│   │   ├── featured_auctions.dart
│   │   ├── category_grid.dart
│   │   ├── ending_soon.dart
│   │   └── recommended_items.dart
│   └── providers/
│       └── home_provider.dart
│
├── auction_room/
│   ├── pages/
│   │   └── auction_detail_page.dart
│   ├── widgets/
│   │   ├── item_gallery.dart
│   │   ├── bid_panel.dart
│   │   ├── countdown_timer.dart
│   │   ├── bid_history.dart
│   │   ├── bidder_list.dart
│   │   ├── auto_bid_setup.dart
│   │   └── live_activity_feed.dart
│   └── providers/
│       ├── auction_provider.dart
│       └── bidding_provider.dart
│
├── listing/
│   ├── pages/
│   │   ├── create_listing_page.dart
│   │   └── listing_preview_page.dart
│   ├── widgets/
│   │   ├── item_form.dart
│   │   ├── photo_uploader.dart
│   │   ├── category_selector.dart
│   │   ├── pricing_setup.dart
│   │   ├── shipping_options.dart
│   │   └── schedule_picker.dart
│   └── providers/
│       └── listing_provider.dart
│
├── my_auctions/
│   ├── pages/
│   │   └── my_auctions_page.dart
│   ├── widgets/
│   │   ├── active_listings.dart
│   │   ├── active_bids.dart
│   │   ├── won_auctions.dart
│   │   ├── sold_items.dart
│   │   └── pending_feedback.dart
│   └── providers/
│       └── my_auctions_provider.dart
│
├── watchlist/
│   ├── pages/
│   │   └── watchlist_page.dart
│   ├── widgets/
│   │   ├── watched_items.dart
│   │   ├── price_alerts.dart
│   │   └── saved_searches.dart
│   └── providers/
│       └── watchlist_provider.dart
│
└── transaction/
    ├── pages/
    │   ├── checkout_page.dart
    │   └── transaction_detail_page.dart
    ├── widgets/
    │   ├── payment_methods.dart
    │   ├── shipping_address.dart
    │   ├── order_summary.dart
    │   └── escrow_info.dart
    └── providers/
        └── transaction_provider.dart
```

### 실시간 경매 인프라

```
lib/infrastructure/realtime/
├── websocket/
│   ├── auction_websocket.dart
│   ├── bid_stream_handler.dart
│   └── live_feed_manager.dart
├── push/
│   ├── outbid_notifier.dart
│   └── auction_reminder.dart
└── cache/
    ├── bid_cache.dart
    └── auction_state_cache.dart
```

### 경매 앱의 특별 고려사항

1. **실시간 입찰 시스템**

   - WebSocket 기반 실시간 업데이트
   - 동시 입찰 처리 및 충돌 방지
   - 입찰 검증 및 순서 보장
   - 스나이핑 방지 (마지막 순간 입찰)

2. **신뢰 시스템**

   - 판매자/구매자 평가
   - 거래 이력 투명성
   - 사기 방지 메커니즘
   - 분쟁 해결 프로세스

3. **결제 보안**

   - 에스크로 시스템
   - 안전한 결제 처리
   - 수수료 자동 정산
   - 환불 정책

4. **상품 검증**

   - 진품 인증
   - 상태 확인
   - 전문가 감정
   - 상세 이미지/영상

5. **경매 전략**
   - 자동 입찰
   - 프록시 입찰
   - 즉시 구매
   - 예약가 설정
