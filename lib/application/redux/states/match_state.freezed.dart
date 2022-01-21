// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'match_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchState _$MatchStateFromJson(Map<String, dynamic> json) {
  return _MatchState.fromJson(json);
}

/// @nodoc
class _$MatchStateTearOff {
  const _$MatchStateTearOff();

  _MatchState call({List<String?>? matches, List<String?>? dislikes}) {
    return _MatchState(
      matches: matches,
      dislikes: dislikes,
    );
  }

  MatchState fromJson(Map<String, Object?> json) {
    return MatchState.fromJson(json);
  }
}

/// @nodoc
const $MatchState = _$MatchStateTearOff();

/// @nodoc
mixin _$MatchState {
  List<String?>? get matches => throw _privateConstructorUsedError;
  List<String?>? get dislikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchStateCopyWith<MatchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchStateCopyWith<$Res> {
  factory $MatchStateCopyWith(
          MatchState value, $Res Function(MatchState) then) =
      _$MatchStateCopyWithImpl<$Res>;
  $Res call({List<String?>? matches, List<String?>? dislikes});
}

/// @nodoc
class _$MatchStateCopyWithImpl<$Res> implements $MatchStateCopyWith<$Res> {
  _$MatchStateCopyWithImpl(this._value, this._then);

  final MatchState _value;
  // ignore: unused_field
  final $Res Function(MatchState) _then;

  @override
  $Res call({
    Object? matches = freezed,
    Object? dislikes = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$MatchStateCopyWith<$Res> implements $MatchStateCopyWith<$Res> {
  factory _$MatchStateCopyWith(
          _MatchState value, $Res Function(_MatchState) then) =
      __$MatchStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String?>? matches, List<String?>? dislikes});
}

/// @nodoc
class __$MatchStateCopyWithImpl<$Res> extends _$MatchStateCopyWithImpl<$Res>
    implements _$MatchStateCopyWith<$Res> {
  __$MatchStateCopyWithImpl(
      _MatchState _value, $Res Function(_MatchState) _then)
      : super(_value, (v) => _then(v as _MatchState));

  @override
  _MatchState get _value => super._value as _MatchState;

  @override
  $Res call({
    Object? matches = freezed,
    Object? dislikes = freezed,
  }) {
    return _then(_MatchState(
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
class _$_MatchState implements _MatchState {
  _$_MatchState({this.matches, this.dislikes});

  factory _$_MatchState.fromJson(Map<String, dynamic> json) =>
      _$$_MatchStateFromJson(json);

  @override
  final List<String?>? matches;
  @override
  final List<String?>? dislikes;

  @override
  String toString() {
    return 'MatchState(matches: $matches, dislikes: $dislikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchState &&
            const DeepCollectionEquality().equals(other.matches, matches) &&
            const DeepCollectionEquality().equals(other.dislikes, dislikes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(matches),
      const DeepCollectionEquality().hash(dislikes));

  @JsonKey(ignore: true)
  @override
  _$MatchStateCopyWith<_MatchState> get copyWith =>
      __$MatchStateCopyWithImpl<_MatchState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchStateToJson(this);
  }
}

abstract class _MatchState implements MatchState {
  factory _MatchState({List<String?>? matches, List<String?>? dislikes}) =
      _$_MatchState;

  factory _MatchState.fromJson(Map<String, dynamic> json) =
      _$_MatchState.fromJson;

  @override
  List<String?>? get matches;
  @override
  List<String?>? get dislikes;
  @override
  @JsonKey(ignore: true)
  _$MatchStateCopyWith<_MatchState> get copyWith =>
      throw _privateConstructorUsedError;
}
