import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/domain/entities/chat_message.dart';
import 'package:love_it_app/presentation/router/routes.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(AppRoutes.chatsPage),
      onLongPress: () {},
      enableFeedback: true,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      leading: CircleAvatar(),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '10 min ago',
            style: Theme.of(context).textTheme.caption?.copyWith(
                  fontSize: 11,
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.8),
                ),
          ),
          Icon(
            CupertinoIcons.check_mark,
            size: 16,
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
      title: Text(
        'Some User Name',
        style: Theme.of(context).textTheme.headline6?.copyWith(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8)),
      ),
      subtitle: Text(
        'This is a representation of the last message within this chat along with other information',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 13,
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
            ),
      ),
    );
  }
}
