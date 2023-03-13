import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _errorRoute();
      // case HomeScreen.routeName:
      //   return HomeScreen.route();
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
