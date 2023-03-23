import 'package:flutter/material.dart';

class UserImgSmall extends StatelessWidget {
  const UserImgSmall({
    super.key,
    required this.img,
    this.height = 60,
    this.width = 60,
  });

  final String img;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, right: 8.0),
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
