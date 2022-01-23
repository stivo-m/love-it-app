import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/presentation/pages/chats/widget/chat_list_item.dart';
import 'package:love_it_app/presentation/widgets/custom_page_app_bar.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomPageAppBar(tilte: chatText),

            // list of chat items
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ChatListItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
