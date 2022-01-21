import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:love_it_app/application/redux/states/auth_state.dart';
import 'package:love_it_app/application/redux/states/chat_state.dart';
import 'package:love_it_app/application/redux/states/match_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    ChatState? chatState,
    AuthState? authState,
    MatchState? matchState,
    @JsonKey(ignore: true) Wait? wait,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState();
}
