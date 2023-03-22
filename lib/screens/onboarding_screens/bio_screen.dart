import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class Biography extends StatelessWidget {
  final TabController tabController;

  const Biography({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 50.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(tabController: tabController, text: 'Describe Yourself a Bit'),
              CustomTextField(tabController: tabController, text: 'Enter Your Bio'),
              const SizedBox(height: 100),
              CustomTextHeader(tabController: tabController, text: 'What Do You Like?'),
              Row(
                children: [
                  CustomTextContainer(tabController: tabController, text: 'MUSIC'),
                  CustomTextContainer(tabController: tabController, text: 'ECONOMICS'),
                  CustomTextContainer(tabController: tabController, text: 'ART'),
                  CustomTextContainer(tabController: tabController, text: 'POLITICS'),
                ],
              ),
              Row(
                children: [
                  CustomTextContainer(tabController: tabController, text: 'NATURE'),
                  CustomTextContainer(tabController: tabController, text: 'HIKING'),
                  CustomTextContainer(tabController: tabController, text: 'FOOTBALL'),
                  CustomTextContainer(tabController: tabController, text: 'MOVIES'),
                ],
              ),
            ],
          ),
          CustomFooter(tabController: tabController, index: 5),
        ],
      ),
    );
  }
}
