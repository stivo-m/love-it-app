// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatState _$$_ChatStateFromJson(Map<String, dynamic> json) => _$_ChatState(
      chatMessages: (json['chatMessages'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatStateToJson(_$_ChatState instance) =>
    <String, dynamic>{
      'chatMessages': instance.chatMessages,
    };
