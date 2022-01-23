import 'package:flutter/material.dart';
import 'package:love_it_app/domain/objects/strings.dart';

class MessageInputField extends StatelessWidget {
  const MessageInputField({
    Key? key,
    this.controller,
    this.onSend,
  }) : super(key: key);

  final TextEditingController? controller;
  final VoidCallback? onSend;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      constraints: BoxConstraints(minHeight: 60),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              controller: controller,
              minLines: 1,
              maxLines: 10,
              decoration: InputDecoration.collapsed(
                hintText: enterMessageHereText,
              ),
            ),
          ),
          GestureDetector(
            onTap: onSend,
            child: Icon(
              Icons.send,
              size: 17,
            ),
          )
        ],
      ),
    );
  }
}
