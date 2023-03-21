import 'package:flutter/material.dart';

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
        vertical: 30.0,
      ),
      child: Container(),
    );
  }
}
