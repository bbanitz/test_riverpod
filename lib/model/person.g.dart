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
      state: json['state'] as String?,
      count: json['count'] as int,
      liste: (json['liste'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.adress,
      'postal_code': instance.postalCode,
      'city': instance.city,
      'state': instance.state,
      'count': instance.count,
      'liste': instance.liste,
    };
