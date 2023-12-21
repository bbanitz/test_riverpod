// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      adress: json['adress'] as String,
      postalCode: json['postal_code'] as String?,
      city: json['city'] as String?,
      liste: (json['liste'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.adress,
      'postal_code': instance.postalCode,
      'city': instance.city,
      'liste': instance.liste,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onePersonHash() => r'c96e283cad2eec746e7ac78fd57319f724fa396d';

/// See also [onePerson].
@ProviderFor(onePerson)
final onePersonProvider = AutoDisposeProvider<Person>.internal(
  onePerson,
  name: r'onePersonProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$onePersonHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef OnePersonRef = AutoDisposeProviderRef<Person>;
String _$changePersonHash() => r'ad036edb0c788072d29453b785decce942872d6e';

/// See also [changePerson].
@ProviderFor(changePerson)
final changePersonProvider = AutoDisposeProvider<Object?>.internal(
  changePerson,
  name: r'changePersonProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$changePersonHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ChangePersonRef = AutoDisposeProviderRef<Object?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
