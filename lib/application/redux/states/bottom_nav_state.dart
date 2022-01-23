import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:love_it_app/application/utils/utils.dart';

part 'bottom_nav_state.freezed.dart';
part 'bottom_nav_state.g.dart';

@freezed
class BottomNavState with _$BottomNavState {
  factory BottomNavState({
    int? currentIndex,
    @JsonKey(ignore: true) List<BottomNavigationBarItem>? bottomNavItems,
  }) = _BottomNavState;

  factory BottomNavState.fromJson(Map<String, dynamic> json) =>
      _$BottomNavStateFromJson(json);

  factory BottomNavState.initial() => BottomNavState(
        currentIndex: 0,
        bottomNavItems: initialBottomNavItems,
      );
}
