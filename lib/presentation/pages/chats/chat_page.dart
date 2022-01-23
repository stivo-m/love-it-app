import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/domain/entities/chat_message.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/presentation/pages/chats/widget/message_bubble.dart';
import 'package:love_it_app/presentation/pages/chats/widget/message_input_field.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
    this.messages,
  }) : super(key: key);

  final List<ChatMessage>? messages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 15,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Some User Name',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 16,
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.8)),
            )
          ],
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          // list of messages for the chat
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return MessageBubble(
                  message: List<String>.generate(
                      index, (int i) => genericServerError).toString(),
                  timeStamp: '$index',
                  isMine: index % 2 == 0,
                );
              },
            ),
          ),
          // Chat input widget
          MessageInputField(),
        ],
      ),
    );
  }
}
