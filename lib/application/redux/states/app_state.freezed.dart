// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {ChatState? chatState,
      AuthState? authState,
      BottomNavState? bottomNavState,
      MatchState? matchState,
      ThemeState? themeState,
      @JsonKey(ignore: true) Wait? wait}) {
    return _AppState(
      chatState: chatState,
      authState: authState,
      bottomNavState: bottomNavState,
      matchState: matchState,
      themeState: themeState,
      wait: wait,
    );
  }

  AppState fromJson(Map<String, Object?> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  ChatState? get chatState => throw _privateConstructorUsedError;
  AuthState? get authState => throw _privateConstructorUsedError;
  BottomNavState? get bottomNavState => throw _privateConstructorUsedError;
  MatchState? get matchState => throw _privateConstructorUsedError;
  ThemeState? get themeState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Wait? get wait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {ChatState? chatState,
      AuthState? authState,
      BottomNavState? bottomNavState,
      MatchState? matchState,
      ThemeState? themeState,
      @JsonKey(ignore: true) Wait? wait});

  $ChatStateCopyWith<$Res>? get chatState;
  $AuthStateCopyWith<$Res>? get authState;
  $BottomNavStateCopyWith<$Res>? get bottomNavState;
  $MatchStateCopyWith<$Res>? get matchState;
  $ThemeStateCopyWith<$Res>? get themeState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? chatState = freezed,
    Object? authState = freezed,
    Object? bottomNavState = freezed,
    Object? matchState = freezed,
    Object? themeState = freezed,
    Object? wait = freezed,
  }) {
    return _then(_value.copyWith(
      chatState: chatState == freezed
          ? _value.chatState
          : chatState // ignore: cast_nullable_to_non_nullable
              as ChatState?,
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState?,
      bottomNavState: bottomNavState == freezed
          ? _value.bottomNavState
          : bottomNavState // ignore: cast_nullable_to_non_nullable
              as BottomNavState?,
      matchState: matchState == freezed
          ? _value.matchState
          : matchState // ignore: cast_nullable_to_non_nullable
              as MatchState?,
      themeState: themeState == freezed
          ? _value.themeState
          : themeState // ignore: cast_nullable_to_non_nullable
              as ThemeState?,
      wait: wait == freezed
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ));
  }

  @override
  $ChatStateCopyWith<$Res>? get chatState {
    if (_value.chatState == null) {
      return null;
    }

    return $ChatStateCopyWith<$Res>(_value.chatState!, (value) {
      return _then(_value.copyWith(chatState: value));
    });
  }

  @override
  $AuthStateCopyWith<$Res>? get authState {
    if (_value.authState == null) {
      return null;
    }

    return $AuthStateCopyWith<$Res>(_value.authState!, (value) {
      return _then(_value.copyWith(authState: value));
    });
  }

  @override
  $BottomNavStateCopyWith<$Res>? get bottomNavState {
    if (_value.bottomNavState == null) {
      return null;
    }

    return $BottomNavStateCopyWith<$Res>(_value.bottomNavState!, (value) {
      return _then(_value.copyWith(bottomNavState: value));
    });
  }

  @override
  $MatchStateCopyWith<$Res>? get matchState {
    if (_value.matchState == null) {
      return null;
    }

    return $MatchStateCopyWith<$Res>(_value.matchState!, (value) {
      return _then(_value.copyWith(matchState: value));
    });
  }

  @override
  $ThemeStateCopyWith<$Res>? get themeState {
    if (_value.themeState == null) {
      return null;
    }

    return $ThemeStateCopyWith<$Res>(_value.themeState!, (value) {
      return _then(_value.copyWith(themeState: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChatState? chatState,
      AuthState? authState,
      BottomNavState? bottomNavState,
      MatchState? matchState,
      ThemeState? themeState,
      @JsonKey(ignore: true) Wait? wait});

  @override
  $ChatStateCopyWith<$Res>? get chatState;
  @override
  $AuthStateCopyWith<$Res>? get authState;
  @override
  $BottomNavStateCopyWith<$Res>? get bottomNavState;
  @override
  $MatchStateCopyWith<$Res>? get matchState;
  @override
  $ThemeStateCopyWith<$Res>? get themeState;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? chatState = freezed,
    Object? authState = freezed,
    Object? bottomNavState = freezed,
    Object? matchState = freezed,
    Object? themeState = freezed,
    Object? wait = freezed,
  }) {
    return _then(_AppState(
      chatState: chatState == freezed
          ? _value.chatState
          : chatState // ignore: cast_nullable_to_non_nullable
              as ChatState?,
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState?,
      bottomNavState: bottomNavState == freezed
          ? _value.bottomNavState
          : bottomNavState // ignore: cast_nullable_to_non_nullable
              as BottomNavState?,
      matchState: matchState == freezed
          ? _value.matchState
          : matchState // ignore: cast_nullable_to_non_nullable
              as MatchState?,
      themeState: themeState == freezed
          ? _value.themeState
          : themeState // ignore: cast_nullable_to_non_nullable
              as ThemeState?,
      wait: wait == freezed
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState implements _AppState {
  _$_AppState(
      {this.chatState,
      this.authState,
      this.bottomNavState,
      this.matchState,
      this.themeState,
      @JsonKey(ignore: true) this.wait});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  final ChatState? chatState;
  @override
  final AuthState? authState;
  @override
  final BottomNavState? bottomNavState;
  @override
  final MatchState? matchState;
  @override
  final ThemeState? themeState;
  @override
  @JsonKey(ignore: true)
  final Wait? wait;

  @override
  String toString() {
    return 'AppState(chatState: $chatState, authState: $authState, bottomNavState: $bottomNavState, matchState: $matchState, themeState: $themeState, wait: $wait)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.chatState, chatState) &&
            const DeepCollectionEquality().equals(other.authState, authState) &&
            const DeepCollectionEquality()
                .equals(other.bottomNavState, bottomNavState) &&
            const DeepCollectionEquality()
                .equals(other.matchState, matchState) &&
            const DeepCollectionEquality()
                .equals(other.themeState, themeState) &&
            const DeepCollectionEquality().equals(other.wait, wait));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatState),
      const DeepCollectionEquality().hash(authState),
      const DeepCollectionEquality().hash(bottomNavState),
      const DeepCollectionEquality().hash(matchState),
      const DeepCollectionEquality().hash(themeState),
      const DeepCollectionEquality().hash(wait));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {ChatState? chatState,
      AuthState? authState,
      BottomNavState? bottomNavState,
      MatchState? matchState,
      ThemeState? themeState,
      @JsonKey(ignore: true) Wait? wait}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  ChatState? get chatState;
  @override
  AuthState? get authState;
  @override
  BottomNavState? get bottomNavState;
  @override
  MatchState? get matchState;
  @override
  ThemeState? get themeState;
  @override
  @JsonKey(ignore: true)
  Wait? get wait;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
