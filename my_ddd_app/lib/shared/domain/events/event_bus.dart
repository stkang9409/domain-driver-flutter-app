// lib/shared/domain/events/event_bus.dart
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_ddd_app/shared/domain/events/domain_event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_bus.g.dart';

class EventBus {
  final _controller = StreamController<DomainEvent>.broadcast();

  Stream<T> on<T extends DomainEvent>() {
    return _controller.stream.where((event) => event is T).cast<T>();
  }

  void publish(DomainEvent event) {
    _controller.add(event);
  }

  void dispose() {
    _controller.close();
  }
}

@Riverpod(keepAlive: true)
EventBus eventBus(Ref ref) {
  final bus = EventBus();
  ref.onDispose(() => bus.dispose());
  return bus;
}
