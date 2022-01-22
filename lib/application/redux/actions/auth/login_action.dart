import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/actions/auth/update_auth_state_action.dart';
import 'package:love_it_app/application/redux/flags/flags.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/entities/user_profile.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/infrastructure/repositories/auth_repository.dart';
import 'package:love_it_app/presentation/router/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginAction extends ReduxAction<AppState> {
  LoginAction({
    required this.emailAddress,
    required this.password,
    required this.context,
  });

  final EmailAddress emailAddress;
  final Password password;
  final BuildContext context;

  @override
  FutureOr<void> before() {
    store.dispatch(WaitAction<AppState>.add(AppFlags.loginFlag));
    return super.before();
  }

  @override
  void after() {
    super.after();

    store.dispatch(WaitAction<AppState>.remove(AppFlags.loginFlag));
  }

  @override
  Future<AppState?> reduce() async {
    AuthRepository repository = AuthRepository();

    final Either<String, UserProfile>? result =
        await repository.loginWithEmailAndPassword(
      emailAddress: emailAddress,
      password: password,
    );

    result!.fold((String l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l)),
      );
      return state;
    }, (UserProfile user) async {
      SharedPreferences _prefs = await SharedPreferences.getInstance();

      final String? _token = _prefs.getString(apiToken);

      if (_token != null && user.id != null) {
        store.dispatch(UpdateAuthStateAction(
          profile: user,
          token: _token,
        ));

        // navigate the user
        Navigator.of(context).popAndPushNamed(AppRoutes.homePage);
        return state;
      }

      return state;
    });
  }
}
