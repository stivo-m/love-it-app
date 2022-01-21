import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/entities/user_profile.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/infrastructure/repositories/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginAction extends ReduxAction<AppState> {
  LoginAction({
    required this.emailAddress,
    required this.password,
  });

  final EmailAddress emailAddress;
  final Password password;

  @override
  Future<AppState?> reduce() async {
    AuthRepository repository = AuthRepository();

    final UserProfile? user = await repository.loginWithEmailAndPassword(
      emailAddress: emailAddress,
      password: password,
    );

    SharedPreferences _prefs = await SharedPreferences.getInstance();

    return state.copyWith.authState!.call(
      userProfile: user,
      token: _prefs.getString(apiToken),
    );
  }
}
