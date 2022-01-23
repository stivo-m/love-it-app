import 'package:async_redux/async_redux.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/failures/value_failures.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/domain/validators/validate_email.dart';

/// [checkIfWaiting] returns a boolean to indicate if the passed
/// [flag] is in waiting, i.e there is an operation in progress
/// with the given [flag].

bool? checkIfWaiting({
  required String flag,
  required BuildContext context,
}) {
  return StoreProvider.state<AppState>(context)?.wait?.isWaitingFor(flag);
}

/// [validateFormEmail] validate input email and return an invalid email
/// for the given [val] if it is not a valid email according to the rules
/// defined in [validateEmailAddress].
///
/// If the email is valid, the function will return null;

String? validateFormEmail(String? val) {
  if (val!.isEmpty) return emptyEmailTextError;

  Either<ValueFailure<String>, String> validation = validateEmailAddress(val);

  return validation.fold(
    (ValueFailure<String> l) => invalidEmailErrorText,
    (String r) => null,
  );
}

List<BottomNavigationBarItem> initialBottomNavItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.home),
    label: homeText,
  ),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.chat_bubble_2),
    label: chatText,
  ),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.person),
    label: profileText,
  )
];
