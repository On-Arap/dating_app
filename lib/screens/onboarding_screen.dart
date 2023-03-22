import 'package:dating_app/screens/onboarding_screens/screens.dart';
import 'package:dating_app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = '/onboarding';

  const OnBoardingScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const OnBoardingScreen(),
    );
  }

  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Start'),
    Tab(text: 'Email'),
    Tab(text: 'Email Verification'),
    Tab(text: 'Demographics'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {}
        });
        return Scaffold(
          appBar: CustomAppBar(
            title: 'ARROW',
            hasActions: false,
          ),
          body: TabBarView(
            children: [
              StartScreen(tabController: tabController),
              Email(tabController: tabController),
              EmailVerification(tabController: tabController),
              Demographics(tabController: tabController),
            ],
          ),
        );
      }),
    );
  }
}
