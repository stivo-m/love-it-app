// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      chatState: json['chatState'] == null
          ? null
          : ChatState.fromJson(json['chatState'] as Map<String, dynamic>),
      authState: json['authState'] == null
          ? null
          : AuthState.fromJson(json['authState'] as Map<String, dynamic>),
      bottomNavState: json['bottomNavState'] == null
          ? null
          : BottomNavState.fromJson(
              json['bottomNavState'] as Map<String, dynamic>),
      matchState: json['matchState'] == null
          ? null
          : MatchState.fromJson(json['matchState'] as Map<String, dynamic>),
      themeState: json['themeState'] == null
          ? null
          : ThemeState.fromJson(json['themeState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'chatState': instance.chatState,
      'authState': instance.authState,
      'bottomNavState': instance.bottomNavState,
      'matchState': instance.matchState,
      'themeState': instance.themeState,
    };
