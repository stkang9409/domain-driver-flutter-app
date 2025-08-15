// lib/shared/domain/value_objects/uuid.dart
import 'package:uuid/uuid.dart' as uuid_pkg;

class Uuid {
  final String value;

  const Uuid._(this.value);

  factory Uuid.fromString(String value) {
    // Validation logic
    return Uuid._(value);
  }

  factory Uuid.generate() {
    return Uuid._(const uuid_pkg.Uuid().v4());
  }

  @override
  String toString() => value;
}
