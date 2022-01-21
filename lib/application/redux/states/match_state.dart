import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_state.freezed.dart';
part 'match_state.g.dart';

@freezed
class MatchState with _$MatchState {
  factory MatchState({
    List<String?>? matches,
    List<String?>? dislikes,
  }) = _MatchState;

  factory MatchState.fromJson(Map<String, dynamic> json) =>
      _$MatchStateFromJson(json);

  factory MatchState.initial() => MatchState();
}
