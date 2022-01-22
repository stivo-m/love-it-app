import 'package:async_redux/async_redux.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/entities/user_profile.dart';

class UpdateAuthStateAction extends ReduxAction<AppState> {
  final String? token;
  final UserProfile? profile;

  UpdateAuthStateAction({
    this.token,
    this.profile,
  });
  @override
  AppState reduce() {
    return state.copyWith.authState!.call(
      userProfile: profile,
      token: token,
    );
  }
}
