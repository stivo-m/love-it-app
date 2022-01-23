import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/presentation/widgets/custom_page_app_bar.dart';

import '../../../mocks/mock_utils.dart';

void main() {
  group('CustomPageAppBar', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: CustomPageAppBar(tilte: loginTitle),
        );

        await tester.pumpAndSettle();

        expect(find.byType(IconButton), findsOneWidget);
        expect(find.text(loginTitle), findsOneWidget);
      },
    );
  });
}
