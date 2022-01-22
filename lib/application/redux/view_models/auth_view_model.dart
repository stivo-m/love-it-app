// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/actions/auth/login_action.dart';
import 'package:love_it_app/application/redux/actions/auth/register_action.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/objects/enums.dart';
import 'package:love_it_app/domain/objects/name_value_object.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';

class AuthViewModel {
  AuthViewModel({
    required this.login,
    required this.register,
  });

  final Function({
    required EmailAddress emailAddress,
    required Password password,
    required BuildContext context,
  }) login;

  final Function({
    required Name firstName,
    required Name lastName,
    required Gender gender,
    required String age,
    required EmailAddress emailAddress,
    required Password password,
    required BuildContext context,
  }) register;

  static AuthViewModel fromStore(Store<AppState> store) {
    return AuthViewModel(
      login: ({
        required EmailAddress emailAddress,
        required Password password,
        required BuildContext context,
      }) =>
          store.dispatch(
        LoginAction(
          emailAddress: emailAddress,
          password: password,
          context: context,
        ),
      ),
      register: ({
        required Name firstName,
        required Name lastName,
        required Gender gender,
        required String age,
        required EmailAddress emailAddress,
        required Password password,
        required BuildContext context,
      }) =>
          store.dispatch(
        RegisterAction(
          context: context,
          emailAddress: emailAddress,
          password: password,
          age: age,
          firstName: firstName,
          gender: gender,
          lastName: lastName,
        ),
      ),
    );
  }
}
