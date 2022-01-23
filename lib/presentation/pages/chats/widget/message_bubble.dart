import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    required this.message,
    required this.timeStamp,
    this.isMine = false,
  }) : super(key: key);

  final bool? isMine;
  final String message;
  final String timeStamp;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.only(
        left: isMine! ? 40 : 0,
        right: !isMine! ? 40 : 0,
        bottom: 10,
        top: 10,
      ),
      constraints: BoxConstraints(
        minHeight: 40,
        minWidth: 60,
        maxWidth: MediaQuery.of(context).size.width * 0.65,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isMine! ? 10 : 0),
          bottomLeft: Radius.circular(isMine! ? 10 : 0),
          topRight: Radius.circular(!isMine! ? 10 : 0),
          bottomRight: Radius.circular(!isMine! ? 10 : 0),
        ),
        color: isMine!
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.primary,
      ),
      child: Text(
        message,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: isMine!
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.onPrimary,
            ),
      ),
    );
  }
}
