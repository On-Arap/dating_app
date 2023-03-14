import 'package:flutter/material.dart';
import '../widget/widgets.dart';
import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          UserCard(user: User.users[0]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ChoiceButton(
                  width: 60,
                  height: 60,
                  size: 25,
                  color: Theme.of(context).colorScheme.secondary,
                  hasGradient: false,
                  icon: Icons.clear_rounded,
                ),
                const ChoiceButton(
                  width: 80,
                  height: 80,
                  size: 30,
                  color: Colors.white,
                  hasGradient: true,
                  icon: Icons.favorite,
                ),
                ChoiceButton(
                  width: 60,
                  height: 60,
                  size: 25,
                  color: Theme.of(context).colorScheme.primary,
                  hasGradient: false,
                  icon: Icons.watch_later,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
