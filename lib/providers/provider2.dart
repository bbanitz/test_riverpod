import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'provider1.dart';
part 'provider2.g.dart';

@riverpod
String dureeStr(DureeStrRef ref) {
  final int value = ref.watch(countProvider) * 5;
  return 'Count X 5 : $value';
}
