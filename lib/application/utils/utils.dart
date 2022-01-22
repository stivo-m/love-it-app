import 'package:async_redux/async_redux.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/failures/value_failures.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/domain/validators/validate_email.dart';

bool? checkIfWaiting({
  required String flag,
  required BuildContext context,
}) {
  return StoreProvider.state<AppState>(context)?.wait?.isWaitingFor(flag);
}

// validate input email and return appropriate result
String? validateFormEmail(String? val) {
  if (val!.isEmpty) return emptyEmailTextError;

  Either<ValueFailure<String>, String> validation = validateEmailAddress(val);

  return validation.fold(
    (ValueFailure<String> l) => invalidEmailErrorText,
    (String r) => null,
  );
}
