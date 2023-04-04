import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  const CustomButton({
    super.key,
    required this.tabController,
    this.text = 'START',
    this.emailController,
    this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
          )),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(elevation: 0, backgroundColor: Colors.transparent),
        onPressed: () async {
          if (emailController != null && passwordController != null) {
            await FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                  email: emailController!.text,
                  password: passwordController!.text,
                )
                .then((value) => print("User Added"))
                .catchError((onError) => print("Failed to add user"));
          }
          tabController.animateTo(tabController.index + 1);
        },
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(text,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                    )),
          ),
        ),
      ),
    );
  }
}
