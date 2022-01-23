import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/application/redux/actions/nav/update_bottom_nav_state_action.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';

import '../../../../../mocks/mock_utils.dart';

void main() {
  final StoreTester<AppState> storeTester = StoreTester<AppState>(
    initialState: AppState.initial(),
  );
  group('UpdateBottomNavStateAction', () {
    testWidgets(
      'should update the current index in the bottom nav state',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          store: storeTester.store,
          child: Builder(
            builder: (BuildContext context) {
              return RawMaterialButton(
                onPressed: () => storeTester.dispatch(
                  UpdateBottomNavStateAction(index: 1),
                ),
              );
            },
          ),
        );

        await tester.pumpAndSettle();

        expect(storeTester.state.bottomNavState!.currentIndex, 0);

        await tester.tap(find.byType(RawMaterialButton));
        await tester.pumpAndSettle();

        expect(storeTester.state.bottomNavState!.currentIndex, 1);
      },
    );

    testWidgets(
      'should update the list of bottom nav items',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          store: storeTester.store,
          child: Builder(
            builder: (BuildContext context) {
              return RawMaterialButton(
                onPressed: () => storeTester.dispatch(
                  UpdateBottomNavStateAction(
                    navItems: <BottomNavigationBarItem>[],
                  ),
                ),
              );
            },
          ),
        );

        await tester.pumpAndSettle();

        expect(
            storeTester.state.bottomNavState!.bottomNavItems!.length, isNot(0));

        await tester.tap(find.byType(RawMaterialButton));
        await tester.pumpAndSettle();

        expect(storeTester.state.bottomNavState!.bottomNavItems!.length, 0);
      },
    );
  });
}
