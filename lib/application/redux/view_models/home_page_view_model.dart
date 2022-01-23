// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/actions/nav/update_bottom_nav_state_action.dart';

import 'package:love_it_app/application/redux/states/app_state.dart';

class HomePageViewModel {
  HomePageViewModel({
    required this.navItems,
    required this.changeBottomNavItem,
    required this.bottomNavIndex,
  });

  final Function({required int index}) changeBottomNavItem;
  final List<BottomNavigationBarItem> navItems;
  final int bottomNavIndex;

  static HomePageViewModel fromStore(Store<AppState> store) {
    return HomePageViewModel(
      navItems: store.state.bottomNavState!.bottomNavItems!,
      bottomNavIndex: store.state.bottomNavState!.currentIndex!,
      changeBottomNavItem: ({required int index}) => store.dispatch(
        UpdateBottomNavStateAction(index: index),
      ),
    );
  }
}
