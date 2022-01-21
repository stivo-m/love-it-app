// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$$_ChatMessageFromJson(Map<String, dynamic> json) =>
    _$_ChatMessage(
      sender: json['sender'] as String?,
      recipient: json['recipient'] as String?,
      message: json['message'] as String?,
      chatID: json['chatID'] as String?,
    );

Map<String, dynamic> _$$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'recipient': instance.recipient,
      'message': instance.message,
      'chatID': instance.chatID,
    };
