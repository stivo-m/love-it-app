import 'package:dio/dio.dart';
import 'package:love_it_app/domain/objects/name_value_object.dart';
import 'package:love_it_app/domain/objects/enums.dart';
import 'package:love_it_app/domain/objects/password_value_object.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/entities/user_profile.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/infrastructure/config/config.dart';
import 'package:love_it_app/infrastructure/facades/i_auth_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository implements IAuthFacade {
  @override
  void logOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove(apiToken);
  }

  @override
  Future<UserProfile>? loginWithEmailAndPassword({
    EmailAddress? emailAddress,
    Password? password,
  }) async {
    final Dio client = AppHTTPClient.client!;

    final Response response = await client.post(
      '/login',
      data: <String, dynamic>{
        'email': emailAddress!.val,
        'password': password,
      },
    );

    // save the user token on shared preference
    final String token = response.data['token'];
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString(apiToken, token);
    AppHTTPClient.setApiToken(token: token);

    final UserProfile profile = UserProfile.fromJson(response.data);
    return profile;
  }

  @override
  Future<UserProfile>? registerUser({
    Name? firstName,
    Name? lastName,
    Gender? gender,
    EmailAddress? emailAddress,
    Password? password,
    String? age,
  }) async {
    final Dio client = AppHTTPClient.client!;

    final Response response = await client.post(
      '/register',
      data: <String, dynamic>{
        'firstName': firstName!.val,
        'lastName': lastName!.val,
        'email': emailAddress!.val,
        'gender': gender!.name,
        'age': age,
        'password': password,
      },
    );

    // save the user token on shared preference
    final String token = response.data['token'];
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString(apiToken, token);
    AppHTTPClient.setApiToken(token: token);

    final UserProfile profile = UserProfile.fromJson(response.data);
    return profile;
  }
}
