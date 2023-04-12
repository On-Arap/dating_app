import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TabController tabController;
  final TextEditingController? controller;
  final String text;
  final Function(String)? onChanged;

  const CustomTextField({
    super.key,
    required this.tabController,
    required this.text,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: text,
          contentPadding: const EdgeInsets.only(bottom: 5.0, top: 12.5),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          )),
      controller: controller,
      onChanged: onChanged,
    );
  }
}
