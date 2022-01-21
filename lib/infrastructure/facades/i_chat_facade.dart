import 'package:love_it_app/domain/entities/chat_message.dart';

abstract class IChatFacade {
  ChatMessage? sendChatMessage({ChatMessage? message}) {}
  ChatMessage? updateChatMessage({ChatMessage? message}) {}
  List<ChatMessage?>? getChatMessages({required String chatID}) {}
}
