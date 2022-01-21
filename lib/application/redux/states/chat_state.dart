import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:love_it_app/domain/entities/chat_message.dart';

part 'chat_state.freezed.dart';
part 'chat_state.g.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    List<ChatMessage?>? chatMessages,
  }) = _ChatState;

  factory ChatState.fromJson(Map<String, dynamic> json) =>
      _$ChatStateFromJson(json);

  factory ChatState.initial() => ChatState();
}
