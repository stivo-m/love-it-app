import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/presentation/pages/chats/chat_page.dart';
import 'package:love_it_app/presentation/pages/chats/widget/message_bubble.dart';
import 'package:love_it_app/presentation/pages/chats/widget/message_input_field.dart';

import '../../../../mocks/mock_utils.dart';

void main() {
  group('ChatPage', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: ChatPage(),
        );

        await tester.pumpAndSettle();

        expect(find.byType(MessageInputField), findsOneWidget);
        expect(find.byType(AppBar), findsOneWidget);
        expect(find.byType(MessageBubble), findsWidgets);
      },
    );
  });
}
