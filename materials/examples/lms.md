## Learning Management System 디렉토리 구조

```
lib/
├── contexts/
│   ├── identity/
│   │   ├── domain/
│   │   │   ├── aggregates/
│   │   │   │   ├── user.dart
│   │   │   │   └── role.dart
│   │   │   ├── entities/
│   │   │   │   ├── user_profile.dart
│   │   │   │   └── permission.dart
│   │   │   ├── value_objects/
│   │   │   │   ├── email.dart
│   │   │   │   └── user_id.dart
│   │   │   ├── repositories/
│   │   │   │   └── user_repository.dart
│   │   │   └── services/
│   │   │       └── authentication_service.dart
│   │   ├── application/
│   │   │   ├── commands/
│   │   │   ├── queries/
│   │   │   └── handlers/
│   │   └── infrastructure/
│   │       ├── repositories/
│   │       ├── services/
│   │       └── models/
│   │
│   ├── course_catalog/
│   │   ├── domain/
│   │   │   ├── aggregates/
│   │   │   │   ├── course.dart
│   │   │   │   ├── curriculum.dart
│   │   │   │   └── instructor.dart
│   │   │   ├── entities/
│   │   │   │   ├── module.dart
│   │   │   │   ├── lesson.dart
│   │   │   │   ├── learning_material.dart
│   │   │   │   └── prerequisite.dart
│   │   │   ├── value_objects/
│   │   │   │   ├── course_id.dart
│   │   │   │   ├── duration.dart
│   │   │   │   └── difficulty_level.dart
│   │   │   └── repositories/
│   │   │       ├── course_repository.dart
│   │   │       └── curriculum_repository.dart
│   │   ├── application/
│   │   └── infrastructure/
│   │
│   ├── enrollment/
│   │   ├── domain/
│   │   │   ├── aggregates/
│   │   │   │   └── enrollment.dart
│   │   │   ├── entities/
│   │   │   │   ├── enrollment_status.dart
│   │   │   │   └── enrollment_period.dart
│   │   │   ├── value_objects/
│   │   │   │   └── enrollment_id.dart
│   │   │   ├── repositories/
│   │   │   │   └── enrollment_repository.dart
│   │   │   └── services/
│   │   │       └── enrollment_validator.dart
│   │   ├── application/
│   │   └── infrastructure/
│   │
│   ├── learning/
│   │   ├── domain/
│   │   │   ├── aggregates/
│   │   │   │   ├── learning_progress.dart
│   │   │   │   └── study_session.dart
│   │   │   ├── entities/
│   │   │   │   ├── lesson_progress.dart
│   │   │   │   ├── learning_activity.dart
│   │   │   │   └── bookmark.dart
│   │   │   ├── value_objects/
│   │   │   │   ├── progress_percentage.dart
│   │   │   │   └── study_time.dart
│   │   │   └── repositories/
│   │   │       ├── progress_repository.dart
│   │   │       └── activity_repository.dart
│   │   ├── application/
│   │   └── infrastructure/
│   │
│   ├── assessment/
│   │   ├── domain/
│   │   │   ├── aggregates/
│   │   │   │   ├── quiz.dart
│   │   │   │   ├── assignment.dart
│   │   │   │   └── exam.dart
│   │   │   ├── entities/
│   │   │   │   ├── question.dart
│   │   │   │   ├── answer.dart
│   │   │   │   ├── submission.dart
│   │   │   │   └── grade.dart
│   │   │   ├── value_objects/
│   │   │   │   ├── score.dart
│   │   │   │   └── assessment_id.dart
│   │   │   ├── repositories/
│   │   │   │   ├── assessment_repository.dart
│   │   │   │   └── submission_repository.dart
│   │   │   └── services/
│   │   │       ├── grading_service.dart
│   │   │       └── plagiarism_detector.dart
│   │   ├── application/
│   │   └── infrastructure/
│   │
│   ├── certification/
│   │   ├── domain/
│   │   │   ├── aggregates/
│   │   │   │   └── certificate.dart
│   │   │   ├── entities/
│   │   │   │   ├── completion_criteria.dart
│   │   │   │   └── certificate_template.dart
│   │   │   ├── value_objects/
│   │   │   │   └── certificate_id.dart
│   │   │   ├── repositories/
│   │   │   │   └── certificate_repository.dart
│   │   │   └── services/
│   │   │       └── certificate_generator.dart
│   │   ├── application/
│   │   └── infrastructure/
│   │
│   ├── discussion/
│   │   ├── domain/
│   │   │   ├── aggregates/
│   │   │   │   ├── forum.dart
│   │   │   │   └── thread.dart
│   │   │   ├── entities/
│   │   │   │   ├── post.dart
│   │   │   │   ├── comment.dart
│   │   │   │   └── reaction.dart
│   │   │   ├── value_objects/
│   │   │   │   └── thread_id.dart
│   │   │   └── repositories/
│   │   │       ├── forum_repository.dart
│   │   │       └── thread_repository.dart
│   │   ├── application/
│   │   └── infrastructure/
│   │
│   ├── payment/
│   │   ├── domain/
│   │   │   ├── aggregates/
│   │   │   │   ├── payment.dart
│   │   │   │   └── subscription.dart
│   │   │   ├── entities/
│   │   │   │   ├── invoice.dart
│   │   │   │   ├── discount.dart
│   │   │   │   └── refund.dart
│   │   │   ├── value_objects/
│   │   │   │   ├── money.dart
│   │   │   │   └── payment_method.dart
│   │   │   └── repositories/
│   │   │       └── payment_repository.dart
│   │   ├── application/
│   │   └── infrastructure/
│   │
│   └── analytics/
│       ├── domain/
│       │   ├── aggregates/
│       │   │   ├── learning_analytics.dart
│       │   │   └── course_analytics.dart
│       │   ├── entities/
│       │   │   ├── learning_metric.dart
│       │   │   ├── engagement_data.dart
│       │   │   └── completion_rate.dart
│       │   ├── value_objects/
│       │   │   └── time_range.dart
│       │   └── repositories/
│       │       └── analytics_repository.dart
│       ├── application/
│       └── infrastructure/
│
├── features/
│   ├── home/
│   │   ├── pages/
│   │   ├── widgets/
│   │   └── providers/
│   ├── course_detail/
│   │   ├── pages/
│   │   ├── widgets/
│   │   └── providers/
│   ├── learning_player/
│   │   ├── pages/
│   │   ├── widgets/
│   │   └── providers/
│   ├── my_courses/
│   │   ├── pages/
│   │   ├── widgets/
│   │   └── providers/
│   ├── assessments/
│   │   ├── pages/
│   │   ├── widgets/
│   │   └── providers/
│   ├── discussion_board/
│   │   ├── pages/
│   │   ├── widgets/
│   │   └── providers/
│   └── analytics_dashboard/
│       ├── pages/
│       ├── widgets/
│       └── providers/
│
├── integration/
│   ├── enrollment_payment_integration.dart
│   ├── learning_assessment_integration.dart
│   ├── completion_certification_integration.dart
│   └── progress_analytics_integration.dart
│
└── shared/
    ├── domain/
    ├── infrastructure/
    └── presentation/
```

### 각 컨텍스트의 핵심 책임

1. **Identity**: 사용자 인증, 권한 관리, 프로필
2. **Course Catalog**: 강좌 정보, 커리큘럼, 강사 정보
3. **Enrollment**: 수강 신청, 수강 상태 관리
4. **Learning**: 학습 진행, 진도 추적, 학습 활동
5. **Assessment**: 퀴즈, 과제, 시험, 채점
6. **Certification**: 수료 기준, 인증서 발급
7. **Discussion**: 포럼, Q&A, 토론
8. **Payment**: 결제, 구독, 환불
9. **Analytics**: 학습 분석, 통계, 리포트
