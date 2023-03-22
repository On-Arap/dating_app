import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'widgets.dart';

class CustomFooter extends StatelessWidget {
  final int index;

  const CustomFooter({
    super.key,
    required this.tabController,
    required this.index,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepProgressIndicator(
          totalSteps: tabController.length,
          currentStep: index,
          selectedColor: Theme.of(context).colorScheme.primary,
          unselectedColor: Theme.of(context).colorScheme.background,
        ),
        const SizedBox(height: 10),
        CustomButton(tabController: tabController, text: 'NEXT STEP'),
      ],
    );
  }
}
