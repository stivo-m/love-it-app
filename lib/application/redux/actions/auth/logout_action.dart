import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/actions/auth/update_auth_state_action.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/infrastructure/repositories/auth_repository.dart';
import 'package:love_it_app/presentation/router/routes.dart';

class LogOutAction extends ReduxAction<AppState> {
  LogOutAction({required this.context});

  final BuildContext context;

  @override
  Future<AppState?> reduce() async {
    AuthRepository repository = AuthRepository();

    repository.logOut();

    store.dispatch(UpdateAuthStateAction(
      token: null,
      profile: null,
    ));

    Navigator.of(context).popAndPushNamed(AppRoutes.loginRoute);
    return state;
  }
}
