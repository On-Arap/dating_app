import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class EmailVerification extends StatelessWidget {
  final TabController tabController;

  const EmailVerification({
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
              CustomTextHeader(tabController: tabController, text: 'Did You Get The Verification Code?'),
              CustomTextField(tabController: tabController, text: 'Enter Your Code'),
            ],
          ),
          CustomButton(tabController: tabController, text: 'NEXT STEP'),
        ],
      ),
    );
  }
}
