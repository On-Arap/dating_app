import 'package:dating_app/screens/matches_screen.dart';
import 'package:dating_app/screens/onboarding_screen.dart';
import 'package:dating_app/screens/users_screen.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/chat_screen.dart';
import '../screens/home_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case UsersScreen.routeName:
        return UsersScreen.route(user: settings.arguments as User);
      case OnBoardingScreen.routeName:
        return OnBoardingScreen.route();
      case MatchesScreen.routeName:
        return MatchesScreen.route();
      case ChatScreen.routeName:
        return ChatScreen.route(userMatch: settings.arguments as UserMatch);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: const Text('error'))),
      settings: const RouteSettings(name: 'error'),
    );
  }
}
