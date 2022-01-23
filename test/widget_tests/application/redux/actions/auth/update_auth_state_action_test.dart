import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/application/redux/actions/auth/update_auth_state_action.dart';

import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/domain/entities/user_profile.dart';
import 'package:love_it_app/domain/objects/strings.dart';

import '../../../../../mocks/mock_utils.dart';

void main() {
  final StoreTester<AppState> storeTester = StoreTester<AppState>(
    initialState: AppState.initial(),
  );
  group('UpdateAuthStateAction', () {
    testWidgets(
      'should update the auth token on state',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          store: storeTester.store,
          child: Builder(
            builder: (BuildContext context) {
              return RawMaterialButton(
                onPressed: () => storeTester.dispatch(
                  UpdateAuthStateAction(token: apiToken),
                ),
              );
            },
          ),
        );

        await tester.pumpAndSettle();

        expect(storeTester.state.authState!.token, null);

        await tester.tap(find.byType(RawMaterialButton));
        await tester.pumpAndSettle();

        expect(storeTester.state.authState!.token, apiToken);
      },
    );

    testWidgets(
      'should update the user profile',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          store: storeTester.store,
          child: Builder(
            builder: (BuildContext context) {
              return RawMaterialButton(
                onPressed: () => storeTester.dispatch(
                  UpdateAuthStateAction(
                    profile: UserProfile.initial().copyWith(age: '20'),
                  ),
                ),
              );
            },
          ),
        );

        await tester.pumpAndSettle();

        expect(
          storeTester.state.authState!.userProfile,
          null,
        );

        await tester.tap(find.byType(RawMaterialButton));
        await tester.pumpAndSettle();

        expect(
          storeTester.state.authState!.userProfile,
          isNot(null),
        );
        expect(
          storeTester.state.authState!.userProfile!.age,
          '20',
        );
      },
    );
  });
}
