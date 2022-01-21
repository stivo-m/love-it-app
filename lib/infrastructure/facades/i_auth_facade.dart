import 'package:love_it_app/domain/entities/user_profile.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/objects/enums.dart';
import 'package:love_it_app/domain/objects/name_value_object.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';

abstract class IAuthFacade {
  Future<UserProfile>? loginWithEmailAndPassword(
      {EmailAddress? emailAddress, Password? password}) {}

  Future<UserProfile>? registerUser({
    Name? firstName,
    Name? lastName,
    Gender? gender,
    EmailAddress? emailAddress,
    Password? password,
    String? age,
  }) {}

  void logOut() {}
}
