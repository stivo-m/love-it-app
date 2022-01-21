// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

  _UserProfile call(
      {String? id,
      Name? firstName,
      Name? lastName,
      Gender? gender,
      EmailAddress? emailAddress,
      String? age,
      List<String?>? matches,
      List<String?>? dislikes}) {
    return _UserProfile(
      id: id,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      emailAddress: emailAddress,
      age: age,
      matches: matches,
      dislikes: dislikes,
    );
  }

  UserProfile fromJson(Map<String, Object?> json) {
    return UserProfile.fromJson(json);
  }
}

/// @nodoc
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  String? get id => throw _privateConstructorUsedError;
  Name? get firstName => throw _privateConstructorUsedError;
  Name? get lastName => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  EmailAddress? get emailAddress => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  List<String?>? get matches => throw _privateConstructorUsedError;
  List<String?>? get dislikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      Name? firstName,
      Name? lastName,
      Gender? gender,
      EmailAddress? emailAddress,
      String? age,
      List<String?>? matches,
      List<String?>? dislikes});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? emailAddress = freezed,
    Object? age = freezed,
    Object? matches = freezed,
    Object? dislikes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as Name?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as Name?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: matches == freezed
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      dislikes: dislikes == freezed
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      Name? firstName,
      Name? lastName,
      Gender? gender,
      EmailAddress? emailAddress,
      String? age,
      List<String?>? matches,
      List<String?>? dislikes});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? emailAddress = freezed,
    Object? age = freezed,
    Object? matches = freezed,
    Object? dislikes = freezed,
  }) {
    return _then(_UserProfile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as Name?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as Name?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: matches == freezed
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      dislikes: dislikes == freezed
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile implements _UserProfile {
  _$_UserProfile(
      {this.id,
      this.firstName,
      this.lastName,
      this.gender,
      this.emailAddress,
      this.age,
      this.matches,
      this.dislikes});

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @override
  final String? id;
  @override
  final Name? firstName;
  @override
  final Name? lastName;
  @override
  final Gender? gender;
  @override
  final EmailAddress? emailAddress;
  @override
  final String? age;
  @override
  final List<String?>? matches;
  @override
  final List<String?>? dislikes;

  @override
  String toString() {
    return 'UserProfile(id: $id, firstName: $firstName, lastName: $lastName, gender: $gender, emailAddress: $emailAddress, age: $age, matches: $matches, dislikes: $dislikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfile &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.matches, matches) &&
            const DeepCollectionEquality().equals(other.dislikes, dislikes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(matches),
      const DeepCollectionEquality().hash(dislikes));

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(this);
  }
}

abstract class _UserProfile implements UserProfile {
  factory _UserProfile(
      {String? id,
      Name? firstName,
      Name? lastName,
      Gender? gender,
      EmailAddress? emailAddress,
      String? age,
      List<String?>? matches,
      List<String?>? dislikes}) = _$_UserProfile;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String? get id;
  @override
  Name? get firstName;
  @override
  Name? get lastName;
  @override
  Gender? get gender;
  @override
  EmailAddress? get emailAddress;
  @override
  String? get age;
  @override
  List<String?>? get matches;
  @override
  List<String?>? get dislikes;
  @override
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
