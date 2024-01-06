// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

/*
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
        city: 'Drusenheim');
  } else {
    person = Person(
        id: 1,
        name: 'Bernard',
        adress: '11a rue des jardins',
        liste: ['dart', 'flutter', 'riverpod'],
        postalCode: '67800',
        city: 'Bischheim');
  }
  ref.invalidate(onePersonProvider);
  first = !first;
}
*/
@freezed
class Person with _$Person {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Person(
      {required int id,
      required String name,
      required String adress,
      String? postalCode,
      String? city,
      String? state,
      required List<String> liste}) = _Person;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}
