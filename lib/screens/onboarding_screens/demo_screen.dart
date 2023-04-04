import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class Demographics extends StatelessWidget {
  final TabController tabController;

  const Demographics({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    final ageController = TextEditingController();
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
              CustomTextHeader(tabController: tabController, text: 'What\s Your Gender'),
              CustomCheckbox(tabController: tabController, text: 'MALE'),
              CustomCheckbox(tabController: tabController, text: 'FEMALE'),
              CustomCheckbox(tabController: tabController, text: 'OTHER'),
              const SizedBox(
                height: 100,
              ),
              CustomTextHeader(tabController: tabController, text: 'What\s Your Age'),
              CustomTextField(
                tabController: tabController,
                text: 'Enter Your Age',
                controller: ageController,
              )
            ],
          ),
          CustomFooter(tabController: tabController, index: 3),
        ],
      ),
    );
  }
}
