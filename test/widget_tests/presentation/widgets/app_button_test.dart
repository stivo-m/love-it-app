import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/presentation/widgets/app_button.dart';

import '../../../mocks/mock_utils.dart';

void main() {
  group('AppButton', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        late String? result = null;
        await buildTestWidget(
          tester: tester,
          child: AppButton(
            buttonText: loginTitle,
            onPressed: () {
              result = loginTitle;
            },
          ),
        );

        await tester.pumpAndSettle();
        expect(find.byType(AppButton), findsOneWidget);
        expect(find.text(loginTitle), findsOneWidget);
        expect(result, null);

        await tester.tap(find.byType(AppButton));
        await tester.pumpAndSettle();

        expect(result, isNot(null));
        expect(result, loginTitle);
      },
    );

    testWidgets(
      'should have a loading state',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: AppButton(
            buttonText: loginTitle,
            isLoading: true,
            onPressed: () {},
          ),
        );

        await tester.pump();

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );
  });
}
