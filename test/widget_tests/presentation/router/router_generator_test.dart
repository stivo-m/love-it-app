import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:love_it_app/presentation/pages/auth/login_page.dart';
import 'package:love_it_app/presentation/pages/auth/register_page.dart';
import 'package:love_it_app/presentation/pages/chats/chat_page.dart';
import 'package:love_it_app/presentation/pages/home_page.dart';
import 'package:love_it_app/presentation/router/router_generator.dart';
import 'package:love_it_app/presentation/router/routes.dart';

void main() {
  group('RouterGenerator', () {
    test('should return home page by default', () {
      const RouteSettings settings = RouteSettings();

      final CupertinoPageRoute<HomePage> route =
          generateRoute(settings) as CupertinoPageRoute<HomePage>;

      expect(route, isA<CupertinoPageRoute<HomePage>>());
      // expect(route.builder(context), isA<HomePage>());
    });

    test('should return home page with route', () {
      const RouteSettings settings = RouteSettings(
        name: AppRoutes.homePage,
      );

      final CupertinoPageRoute<HomePage> route =
          generateRoute(settings) as CupertinoPageRoute<HomePage>;

      expect(route, isA<CupertinoPageRoute<HomePage>>());
      // expect(route.builder(context), isA<HomePage>());
    });

    test('should return login page', () {
      const RouteSettings settings = RouteSettings(
        name: AppRoutes.loginRoute,
      );

      final CupertinoPageRoute<LoginPage> route =
          generateRoute(settings) as CupertinoPageRoute<LoginPage>;

      expect(route, isA<CupertinoPageRoute<LoginPage>>());
      // expect(route.builder(context), isA<LoginPage>());
    });

    test('should return registration page', () {
      const RouteSettings settings = RouteSettings(
        name: AppRoutes.registerRoute,
      );

      final CupertinoPageRoute<RegistrationPage> route =
          generateRoute(settings) as CupertinoPageRoute<RegistrationPage>;

      expect(route, isA<CupertinoPageRoute<RegistrationPage>>());
      // expect(route.builder(context), isA<RegistrationPage>());
    });

    test('should return chats page', () {
      const RouteSettings settings = RouteSettings(
        name: AppRoutes.chatsPage,
      );

      final CupertinoPageRoute<ChatPage> route =
          generateRoute(settings) as CupertinoPageRoute<ChatPage>;

      expect(route, isA<CupertinoPageRoute<ChatPage>>());
      // expect(route.builder(context), isA<ChatPage>());
    });
  });
}
