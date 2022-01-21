import 'package:love_it_app/domain/entities/chat_message.dart';

abstract class IChatFacade {
  Future<ChatMessage?>? sendChatMessage({ChatMessage? message}) {}
  Future<ChatMessage?>? updateChatMessage({ChatMessage? message}) {}
  Future<List<ChatMessage?>?>? getChatMessages({required String chatID}) {}
}
