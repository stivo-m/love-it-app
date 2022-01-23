import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/domain/objects/widget_keys.dart';
import 'package:love_it_app/presentation/pages/auth/register_page.dart';
import 'package:love_it_app/presentation/pages/auth/widget/auth_header.dart';
import 'package:love_it_app/presentation/widgets/app_button.dart';

import '../../../../mocks/mock_utils.dart';

void main() {
  group('RegistrationPage', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: RegistrationPage(),
        );

        await tester.pumpAndSettle();

        expect(find.text(registerTitle), findsNWidgets(2));
        expect(find.byType(AppButton), findsOneWidget);
        expect(find.byType(AuthHeader), findsOneWidget);
      },
    );

    testWidgets(
      'should validate email address',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: RegistrationPage(),
        );

        await tester.pumpAndSettle();

        final Finder emailInput = find.byKey(AppKes.emailInputKey);
        final Finder passwordInput = find.byKey(AppKes.passwordInputKey);
        final Finder registerButton = find.byKey(AppKes.submitButtonKey);
        final Finder scrollKey = find.byKey(AppKes.scrollKey);
        await tester.ensureVisible(scrollKey);
        expect(scrollKey, findsOneWidget);

        await tester.dragUntilVisible(
          scrollKey,
          passwordInput,
          const Offset(0, -20),
        );
        await tester.pumpAndSettle();

        await tester.ensureVisible(registerButton);
        expect(registerButton, findsOneWidget);

        await tester.ensureVisible(emailInput);
        expect(emailInput, findsOneWidget);

        await tester.ensureVisible(passwordInput);
        expect(passwordInput, findsOneWidget);

        await tester.enterText(emailInput, emailText);
        await tester.pumpAndSettle();

        await tester.enterText(passwordInput, emailText);
        await tester.pumpAndSettle();

        await tester.tap(registerButton);
        await tester.pumpAndSettle();

        expect(find.text(invalidEmailErrorText), findsOneWidget);
      },
    );

    // testWidgets(
    //   'should login when correct email is supplied',
    //   (WidgetTester tester) async {
    //     await buildTestWidget(
    //       tester: tester,
    //       child: RegistrationPage(),
    //     );

    //     await tester.pumpAndSettle();

    //     final Finder emailInput = find.byKey(AppKes.emailInputKey);
    //     final Finder passwordInput = find.byKey(AppKes.passwordInputKey);
    //     final Finder loginButton = find.byKey(AppKes.submitButtonKey);
    //     await tester.ensureVisible(emailInput);
    //     await tester.ensureVisible(passwordInput);
    //     await tester.ensureVisible(loginButton);
    //     expect(emailInput, findsOneWidget);
    //     expect(passwordInput, findsOneWidget);
    //     expect(loginButton, findsOneWidget);

    //     await tester.enterText(emailInput, testEmail);
    //     await tester.pumpAndSettle();

    //     await tester.enterText(passwordInput, emailText);
    //     await tester.pumpAndSettle();

    //     await tester.tap(loginButton);
    //     await tester.pumpAndSettle();

    //     expect(find.text(invalidEmailErrorText), findsNothing);
    //     expect(find.byType(RegistrationPage), findsNothing);
    //     expect(find.byType(HomePage), findsOneWidget);
    //   },
    // );
  });
}
