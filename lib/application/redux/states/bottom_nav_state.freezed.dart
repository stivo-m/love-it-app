// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_nav_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BottomNavState _$BottomNavStateFromJson(Map<String, dynamic> json) {
  return _BottomNavState.fromJson(json);
}

/// @nodoc
class _$BottomNavStateTearOff {
  const _$BottomNavStateTearOff();

  _BottomNavState call(
      {int? currentIndex,
      @JsonKey(ignore: true) List<BottomNavigationBarItem>? bottomNavItems}) {
    return _BottomNavState(
      currentIndex: currentIndex,
      bottomNavItems: bottomNavItems,
    );
  }

  BottomNavState fromJson(Map<String, Object?> json) {
    return BottomNavState.fromJson(json);
  }
}

/// @nodoc
const $BottomNavState = _$BottomNavStateTearOff();

/// @nodoc
mixin _$BottomNavState {
  int? get currentIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<BottomNavigationBarItem>? get bottomNavItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BottomNavStateCopyWith<BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
          BottomNavState value, $Res Function(BottomNavState) then) =
      _$BottomNavStateCopyWithImpl<$Res>;
  $Res call(
      {int? currentIndex,
      @JsonKey(ignore: true) List<BottomNavigationBarItem>? bottomNavItems});
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  final BottomNavState _value;
  // ignore: unused_field
  final $Res Function(BottomNavState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? bottomNavItems = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      bottomNavItems: bottomNavItems == freezed
          ? _value.bottomNavItems
          : bottomNavItems // ignore: cast_nullable_to_non_nullable
              as List<BottomNavigationBarItem>?,
    ));
  }
}

/// @nodoc
abstract class _$BottomNavStateCopyWith<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  factory _$BottomNavStateCopyWith(
          _BottomNavState value, $Res Function(_BottomNavState) then) =
      __$BottomNavStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? currentIndex,
      @JsonKey(ignore: true) List<BottomNavigationBarItem>? bottomNavItems});
}

/// @nodoc
class __$BottomNavStateCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res>
    implements _$BottomNavStateCopyWith<$Res> {
  __$BottomNavStateCopyWithImpl(
      _BottomNavState _value, $Res Function(_BottomNavState) _then)
      : super(_value, (v) => _then(v as _BottomNavState));

  @override
  _BottomNavState get _value => super._value as _BottomNavState;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? bottomNavItems = freezed,
  }) {
    return _then(_BottomNavState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      bottomNavItems: bottomNavItems == freezed
          ? _value.bottomNavItems
          : bottomNavItems // ignore: cast_nullable_to_non_nullable
              as List<BottomNavigationBarItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BottomNavState implements _BottomNavState {
  _$_BottomNavState(
      {this.currentIndex, @JsonKey(ignore: true) this.bottomNavItems});

  factory _$_BottomNavState.fromJson(Map<String, dynamic> json) =>
      _$$_BottomNavStateFromJson(json);

  @override
  final int? currentIndex;
  @override
  @JsonKey(ignore: true)
  final List<BottomNavigationBarItem>? bottomNavItems;

  @override
  String toString() {
    return 'BottomNavState(currentIndex: $currentIndex, bottomNavItems: $bottomNavItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BottomNavState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality()
                .equals(other.bottomNavItems, bottomNavItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(bottomNavItems));

  @JsonKey(ignore: true)
  @override
  _$BottomNavStateCopyWith<_BottomNavState> get copyWith =>
      __$BottomNavStateCopyWithImpl<_BottomNavState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BottomNavStateToJson(this);
  }
}

abstract class _BottomNavState implements BottomNavState {
  factory _BottomNavState(
      {int? currentIndex,
      @JsonKey(ignore: true)
          List<BottomNavigationBarItem>? bottomNavItems}) = _$_BottomNavState;

  factory _BottomNavState.fromJson(Map<String, dynamic> json) =
      _$_BottomNavState.fromJson;

  @override
  int? get currentIndex;
  @override
  @JsonKey(ignore: true)
  List<BottomNavigationBarItem>? get bottomNavItems;
  @override
  @JsonKey(ignore: true)
  _$BottomNavStateCopyWith<_BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}
