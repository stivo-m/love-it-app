import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';

class UpdateBottomNavStateAction extends ReduxAction<AppState> {
  UpdateBottomNavStateAction({
    this.index,
    this.navItems,
  });

  final int? index;
  final List<BottomNavigationBarItem>? navItems;

  @override
  AppState? reduce() {
    return state.copyWith.bottomNavState!.call(
      currentIndex: index ?? state.bottomNavState?.currentIndex,
      bottomNavItems: navItems ?? state.bottomNavState?.bottomNavItems,
    );
  }
}
