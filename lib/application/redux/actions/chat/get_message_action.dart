import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/entities/chat_message.dart';
import 'package:love_it_app/infrastructure/repositories/chat_repository.dart';

class GetMessageAction extends ReduxAction<AppState> {
  GetMessageAction({
    required this.chatID,
  });

  final String chatID;

  @override
  Future<AppState?> reduce() async {
    ChatRepository repository = ChatRepository();

    final List<ChatMessage?>? messages =
        await repository.getChatMessages(chatID: chatID);

    return state.copyWith.chatState!.call(
      chatMessages: messages,
    );
  }
}
