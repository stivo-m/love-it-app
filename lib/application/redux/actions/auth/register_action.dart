import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/entities/user_profile.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/objects/enums.dart';
import 'package:love_it_app/domain/objects/name_value_object.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/infrastructure/repositories/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterAction extends ReduxAction<AppState> {
  RegisterAction({
    required this.emailAddress,
    required this.password,
    required this.age,
    required this.firstName,
    required this.gender,
    required this.lastName,
  });

  final Name firstName;
  final Name lastName;
  final EmailAddress emailAddress;
  final Password password;
  final Gender gender;
  final String age;

  @override
  Future<AppState?> reduce() async {
    AuthRepository repository = AuthRepository();

    final UserProfile? user = await repository.registerUser(
      age: age,
      emailAddress: emailAddress,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      password: password,
    );

    SharedPreferences _prefs = await SharedPreferences.getInstance();

    return state.copyWith.authState!.call(
      userProfile: user,
      token: _prefs.getString(apiToken),
    );
  }
}
