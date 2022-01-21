import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:love_it_app/domain/objects/email_value_object.dart';
import 'package:love_it_app/domain/objects/enums.dart';
import 'package:love_it_app/domain/objects/name_value_object.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    String? id,
    Name? firstName,
    Name? lastName,
    Gender? gender,
    EmailAddress? emailAddress,
    String? age,
    List<String?>? matches,
    List<String?>? dislikes,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  factory UserProfile.initial() => UserProfile();
}
