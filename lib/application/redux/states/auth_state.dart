import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:love_it_app/domain/entities/user_profile.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    String? token,
    UserProfile? userProfile,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  factory AuthState.initial() => AuthState();
}
