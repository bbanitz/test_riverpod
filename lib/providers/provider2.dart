import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/person.dart';
import 'provider1.dart';
part 'provider2.g.dart';

@riverpod
String dureeStr(DureeStrRef ref) {
  final int value = ref.watch(countProvider) * 5;
  return 'Count X 5 : $value';
}

bool first = true;
Person person = Person(
    id: 1,
    name: 'Bernard',
    adress: '11a rue des jardins',
    liste: ['c++', 'java', 'dart'],
    postalCode: '67800',
    city: 'Bischheim');

@riverpod
Person onePerson(OnePersonRef ref) {
  return person;
}

@riverpod
changePerson(ChangePersonRef ref) {
  print('change person');
  if (first) {
    person = Person(
        id: 1,
        name: 'Bernard',
        adress: 'rue du docteur René Barriere',
        liste: ['c++', 'java', 'dart'],
        postalCode: '67450',
        city: 'Drusenheim',
        state: 'France');
  } else {
    person = Person(
        id: 1,
        name: 'Helmut',
        adress: '13 SchwartzwaldStrasse',
        liste: ['dart', 'flutter', 'riverpod'],
        postalCode: '76229',
        city: 'Karlsruhe',
        state: 'Deutschland');
  }
  ref.invalidate(onePersonProvider);
  first = !first;
}
