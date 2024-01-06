// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

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
      required int count,
      required List<String> liste}) = _Person;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}
