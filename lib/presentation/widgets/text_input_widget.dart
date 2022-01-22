import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    Key? key,
    this.controller,
    this.leading,
    this.trailing,
    this.hintText,
    this.obscureText = false,
    this.disabled = false,
    this.validator,
    this.keyBoardInputType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController? controller;
  final Widget? leading;
  final Widget? trailing;
  final String? hintText;
  final bool? obscureText;
  final String? Function(String? val)? validator;
  final bool? disabled;
  final TextInputType? keyBoardInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,
      validator: validator,
      enabled: !disabled!,
      keyboardType: keyBoardInputType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 20), // add padding to adjust text
        isDense: true,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
            ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(top: 15), // add padding to adjust icon
          child: leading,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(top: 15), // add padding to adjust icon
          child: trailing,
        ),
      ),
    );
  }
}
