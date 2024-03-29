import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hasActions;

  CustomAppBar({
    super.key,
    required this.title,
    this.hasActions = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: SvgPicture.asset(
                  'assets/logo.svg',
                  height: 50,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      actions: hasActions
          ? [
              IconButton(onPressed: () {}, icon: Icon(Icons.message, color: Theme.of(context).colorScheme.primary)),
              IconButton(onPressed: () {}, icon: Icon(Icons.person, color: Theme.of(context).colorScheme.primary)),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
