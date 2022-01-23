import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/domain/objects/strings.dart';
import 'package:love_it_app/presentation/pages/chats/widget/message_bubble.dart';

import '../../../../../mocks/mock_utils.dart';

void main() {
  group('MessageBubble', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: MessageBubble(
            message: loginTitle,
            timeStamp: registerTitle,
            isMine: true,
          ),
        );

        await tester.pumpAndSettle();

        expect(find.text(loginTitle), findsOneWidget);
      },
    );
  });
}
