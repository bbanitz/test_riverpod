import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'provider1.g.dart';

int _count = 0;
bool counterRunning = true;
Timer? timer;

@riverpod
int count(CountRef ref) {
  print('count:$_count');
  return _count;
}

@riverpod
String isRunning(IsRunningRef ref) {
  return (timer != null) ? "started" : "stopped";
}

@riverpod
class CounterAction extends _$CounterAction {
  @override
  int build() {
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      _count++;
      ref.invalidate(countProvider);
    });
    return 0;
  }

  void reset() {
    _count = 0;
    ref.invalidate(countProvider);
  }

  void stop() {
    print('stop');
    timer?.cancel();
    timer = null;
    ref.invalidate(isRunningProvider);
  }

  void start() {
    print('start counter');
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      _count++;
      ref.invalidate(countProvider);
    });
    ref.invalidate(countProvider);
    ref.invalidate(isRunningProvider);
  }
}

@riverpod
String test2(Test2Ref ref) {
  return 'test 2';
}
