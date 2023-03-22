import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class Email extends StatelessWidget {
  final TabController tabController;

  const Email({
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
              CustomTextHeader(tabController: tabController, text: 'What\'s Your Email Address?'),
              CustomTextField(tabController: tabController, text: 'Enter Your Email'),
            ],
          ),
          CustomButton(tabController: tabController, text: 'NEXT STEP'),
        ],
      ),
    );
  }
}