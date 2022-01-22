import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/domain/objects/widget_keys.dart';
import 'package:love_it_app/presentation/pages/auth/login_page.dart';
import 'package:love_it_app/presentation/widgets/app_button.dart';
import 'package:love_it_app/presentation/widgets/text_input_widget.dart';

import '../../../../mocks/mock_utils.dart';

void main() {
  group('LoginPage', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: LoginPage(),
        );

        await tester.pumpAndSettle();

        expect(find.text(loginTitle), findsNWidgets(2));
        expect(find.byType(TextInputWidget), findsNWidgets(2));
        expect(find.byType(AppButton), findsOneWidget);
      },
    );

    testWidgets(
      'should validate email address',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: LoginPage(),
        );

        await tester.pumpAndSettle();

        final Finder emailInput = find.byKey(AppKes.emailInputKey);
        final Finder passwordInput = find.byKey(AppKes.passwordInputKey);
        final Finder loginButton = find.byKey(AppKes.submitButtonKey);
        await tester.ensureVisible(emailInput);
        await tester.ensureVisible(passwordInput);
        await tester.ensureVisible(loginButton);
        expect(emailInput, findsOneWidget);
        expect(passwordInput, findsOneWidget);
        expect(loginButton, findsOneWidget);

        await tester.enterText(emailInput, emailText);
        await tester.pumpAndSettle();

        await tester.enterText(passwordInput, emailText);
        await tester.pumpAndSettle();

        await tester.tap(loginButton);
        await tester.pumpAndSettle();

        expect(find.text(invalidEmailErrorText), findsOneWidget);
      },
    );

    // testWidgets(
    //   'should login when correct email is supplied',
    //   (WidgetTester tester) async {
    //     await buildTestWidget(
    //       tester: tester,
    //       child: LoginPage(),
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
    //     expect(find.byType(LoginPage), findsNothing);
    //     expect(find.byType(HomePage), findsOneWidget);
    //   },
    // );
  });
}
