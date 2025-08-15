import 'package:meta/meta_meta.dart';

@Target({
  TargetKind.method,
  TargetKind.function,
  TargetKind.getter,
  TargetKind.setter,
  TargetKind.field,
  TargetKind.constructor,
  TargetKind.topLevelVariable,
})
class Unimplemented {
  final String message;
  
  const Unimplemented([this.message = 'This feature is not yet implemented']);
}

const unimplemented = Unimplemented;