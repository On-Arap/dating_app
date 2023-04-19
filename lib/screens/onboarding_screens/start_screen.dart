import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './widgets/widgets.dart';

class StartScreen extends StatelessWidget {
  final TabController tabController;

  const StartScreen({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 30.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: SvgPicture.asset('assets/logo.svg'),
              ),
              const SizedBox(height: 50),
              Text(
                'Welcome To Arrow',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              Text(
                'Ad alias esse aut quia beatae quo provident quas et distinctio reprehenderit aut perspiciatis quidem. Vel rerum illum qui debitis dolores et facere minima sed.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      height: 1.8,
                    ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          CustomButton(tabController: tabController),
        ],
      ),
    );
  }
}
