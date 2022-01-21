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
      matchState: json['matchState'] == null
          ? null
          : MatchState.fromJson(json['matchState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'chatState': instance.chatState,
      'authState': instance.authState,
      'matchState': instance.matchState,
    };
