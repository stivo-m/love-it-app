import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/presentation/pages/auth/login_page.dart';
import 'package:love_it_app/presentation/pages/auth/register_page.dart';
import 'package:love_it_app/presentation/pages/chats/chat_page.dart';
import 'package:love_it_app/presentation/pages/home_page.dart';
import 'package:love_it_app/presentation/router/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // final dynamic args = settings.arguments;

  switch (settings.name) {
    case AppRoutes.homePage:
      return CupertinoPageRoute<HomePage>(builder: (_) => HomePage());
    case AppRoutes.loginRoute:
      return CupertinoPageRoute<LoginPage>(builder: (_) => LoginPage());
    case AppRoutes.registerRoute:
      return CupertinoPageRoute<RegistrationPage>(
          builder: (_) => RegistrationPage());

    case AppRoutes.chatsPage:
      return CupertinoPageRoute<ChatPage>(builder: (_) => ChatPage());

    default:
      return CupertinoPageRoute<HomePage>(builder: (_) => HomePage());
  }
}
