import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/presentation/pages/chats/chat_list_page.dart';
import 'package:love_it_app/presentation/pages/chats/widget/chat_list_item.dart';
import 'package:love_it_app/presentation/widgets/custom_page_app_bar.dart';

import '../../../../mocks/mock_utils.dart';

void main() {
  group('ChatListPage', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        await buildTestWidget(
          tester: tester,
          child: ChatListPage(),
        );

        await tester.pumpAndSettle();

        expect(find.byType(ChatListItem), findsWidgets);
        expect(find.byType(CustomPageAppBar), findsOneWidget);
      },
    );
  });
}
