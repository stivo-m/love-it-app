import 'package:dio/dio.dart';
import 'package:love_it_app/domain/entities/chat_message.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/infrastructure/config/config.dart';
import 'package:love_it_app/infrastructure/facades/i_chat_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatRepository implements IChatFacade {
  @override
  Future<List<ChatMessage?>?>? getChatMessages({required String chatID}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? token = preferences.getString(apiToken);
    AppHTTPClient(token: token);
    final Dio client = AppHTTPClient.client!;

    final Response response = await client.get(
      '/chat/getMessages',
      queryParameters: <String, dynamic>{
        'chatID': chatID,
      },
    );
    final Map<String, dynamic> chats = response.data;

    List<ChatMessage?>? messages;
    for (var i = 0; i < chats.length; i++) {
      final ChatMessage? message = ChatMessage.fromJson(chats[i]);
      messages?.add(message);
    }

    return messages;
  }

  @override
  Future<ChatMessage?>? sendChatMessage({ChatMessage? message}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? token = preferences.getString(apiToken);
    AppHTTPClient(token: token);
    final Dio client = AppHTTPClient.client!;

    final Response response = await client.post(
      '/chat/sendMessage',
      data: message?.toJson(),
    );

    final ChatMessage? msg = ChatMessage.fromJson(response.data);
    return msg;
  }

  @override
  Future<ChatMessage?>? updateChatMessage({ChatMessage? message}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? token = preferences.getString(apiToken);
    AppHTTPClient(token: token);
    final Dio client = AppHTTPClient.client!;

    final Response response = await client.post(
      '/chat/updateMessage',
      data: message?.toJson(),
    );

    final ChatMessage? msg = ChatMessage.fromJson(response.data);
    return msg;
  }
}
