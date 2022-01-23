import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/application/redux/view_models/home_page_view_model.dart';
import 'package:love_it_app/domain/objects/widget_keys.dart';
import 'package:love_it_app/presentation/pages/chats/chat_list_page.dart';
import 'package:love_it_app/presentation/pages/explore/explore_page.dart';
import 'package:love_it_app/presentation/pages/profile/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<Widget> _pages = const <Widget>[
    ExplorePage(),
    ChatListPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageViewModel>(
      converter: (Store<AppState> store) => HomePageViewModel.fromStore(store),
      builder: (BuildContext context, HomePageViewModel vm) {
        return Scaffold(
          body: SafeArea(
            child: _pages[vm.bottomNavIndex],
          ),

          // bottom nav actions
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: vm.bottomNavIndex,
            items: vm.navItems,
            onTap: (int index) => vm.changeBottomNavItem(index: index),
            type: BottomNavigationBarType.fixed,
            key: AppKes.bottomNavKey,
            elevation: 10,
            backgroundColor: Theme.of(context).colorScheme.background,
          ),
        );
      },
    );
  }
}
