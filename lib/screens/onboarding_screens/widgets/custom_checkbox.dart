import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final TabController tabController;
  final String text;

  const CustomCheckbox({
    super.key,
    required this.tabController,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
