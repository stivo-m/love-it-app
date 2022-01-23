import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/presentation/pages/chats/widget/message_input_field.dart';

import '../../../../../mocks/mock_utils.dart';

void main() {
  group('MessageInputField', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: MessageInputField(),
        );

        await tester.pumpAndSettle();

        expect(find.byType(TextFormField), findsOneWidget);
        expect(find.byType(GestureDetector), findsOneWidget);
      },
    );
  });
}
