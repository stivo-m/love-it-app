import 'package:dartz/dartz.dart';
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
  Future<Either<String, UserProfile>>? loginWithEmailAndPassword({
    EmailAddress? emailAddress,
    Password? password,
  }) async {
    final Dio client = AppHTTPClient.client!;

    try {
      final Response<dynamic> response = await client.post(
        '$baseUrl/login',
        data: <String, dynamic>{
          'email': emailAddress!.val,
          'password': password!.val,
        },
      );

      // save the user token on shared preference
      final String token = response.data['token'];
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setString(apiToken, token);

      final UserProfile profile = UserProfile(
        firstName: Name.withValue(input: response.data['data']['firstName']),
        lastName: Name.withValue(input: response.data['data']['lastName']),
        age: response.data['data']['age'],
        id: response.data['data']['id'],
        emailAddress: EmailAddress.withValue(
          input: response.data['data']['email'],
        ),
        gender: Gender.values.firstWhere(
          (Gender g) =>
              g.name.toLowerCase() ==
              response.data['data']['gender'].toString().toLowerCase(),
        ),
      );
      return right(profile);
    } catch (e) {
      if (e is DioError) {
        if (e.message.toLowerCase().contains('socket')) {
          return left(genericServerError);
        }

        return left(e.response?.data['error']);
      }

      return left(e.toString());
    }
  }

  @override
  Future<Either<String, UserProfile>>? registerUser({
    Name? firstName,
    Name? lastName,
    Gender? gender,
    EmailAddress? emailAddress,
    Password? password,
    String? age,
  }) async {
    final Dio client = AppHTTPClient.client!;

    try {
      final Response<dynamic> response = await client.post(
        '$baseUrl/register',
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

      final UserProfile profile = UserProfile(
        firstName: Name.withValue(input: response.data['data']['firstName']),
        lastName: Name.withValue(input: response.data['data']['lastName']),
        age: response.data['data']['age'],
        id: response.data['data']['id'],
        emailAddress: EmailAddress.withValue(
          input: response.data['data']['email'],
        ),
        gender: Gender.values.firstWhere(
          (Gender g) =>
              g.name.toLowerCase() ==
              response.data['data']['gender'].toString().toLowerCase(),
        ),
      );
      return right(profile);
    } catch (e) {
      if (e is DioError) {
        if (e.message.toLowerCase().contains('socket')) {
          return left(genericServerError);
        }

        return left(e.response?.data['error']);
      }

      return left(e.toString());
    }
  }
}
