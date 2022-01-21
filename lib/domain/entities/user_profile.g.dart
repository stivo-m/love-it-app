// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      id: json['id'] as String?,
      firstName: json['firstName'] == null
          ? null
          : Name.fromJson(json['firstName'] as String),
      lastName: json['lastName'] == null
          ? null
          : Name.fromJson(json['lastName'] as String),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      emailAddress: json['emailAddress'] == null
          ? null
          : EmailAddress.fromJson(json['emailAddress'] as String),
      age: json['age'] as String?,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      dislikes: (json['dislikes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': _$GenderEnumMap[instance.gender],
      'emailAddress': instance.emailAddress,
      'age': instance.age,
      'matches': instance.matches,
      'dislikes': instance.dislikes,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
