import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';
part 'theme_state.g.dart';

@freezed
class ThemeState with _$ThemeState {
  factory ThemeState({
    ThemeMode? themeMode,
  }) = _ThemeState;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);

  factory ThemeState.initial() => ThemeState(
        themeMode: ThemeMode.system,
      );
}
