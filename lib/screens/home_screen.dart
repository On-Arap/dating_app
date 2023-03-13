import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: SvgPicture.asset(
                'assets/logo.svg',
                height: 50,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                'DISCOVER',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message, color: Theme.of(context).colorScheme.primary)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person, color: Theme.of(context).colorScheme.primary)),
        ],
      ),
    );
  }
}
