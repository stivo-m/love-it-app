import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.backgroundColor,
    this.textColor,
    this.isLoading = false,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);
  final Color? backgroundColor;
  final Color? textColor;
  final String buttonText;
  final VoidCallback onPressed;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
        color: backgroundColor ?? Theme.of(context).colorScheme.primary,
        elevation: 5,
        height: 55,
        onPressed: isLoading! ? null : onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Center(
            child: isLoading!
                ? CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.secondary),
                  )
                : Text(
                    buttonText,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: textColor ??
                              Theme.of(context).colorScheme.onPrimary,
                          fontSize: 18,
                        ),
                  ),
          ),
        ),
      ),
    );
  }
}
