import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/presentation/router/router_generator.dart';

const String testEmail = 'test@email.com';
const String testFirstName = 'John';
const String testLastName = 'Doe';

Future<void> buildTestWidget({
  required WidgetTester tester,
  required Widget child,
  Store<AppState>? store,
}) async {
  store ??= Store<AppState>(initialState: AppState.initial());
  return await tester.pumpWidget(StoreProvider<AppState>(
    store: store,
    child: MaterialApp(
      onGenerateRoute: generateRoute,
      home: Scaffold(body: child),
    ),
  ));
}
