import 'package:love_it_app/domain/entities/user_profile.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';

abstract class IAuthFacade {
  UserProfile? loginWithEmailAndPassword(
      {EmailAddress? emailAddress, Password? password}) {}

  void logOut() {}
}
