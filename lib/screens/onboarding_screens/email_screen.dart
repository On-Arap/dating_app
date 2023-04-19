import 'package:dating_app/cubits/signup/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import './widgets/widgets.dart';

class Email extends StatelessWidget {
  final TabController tabController;

  const Email({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
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
                  CustomTextHeader(tabController: tabController, text: 'What\'s Your Email Address?'),
                  CustomTextField(
                    tabController: tabController,
                    text: 'Enter Your Email',
                    onChanged: (value) {
                      context.read<SignupCubit>().emailChanged(value);
                      print(state.email);
                    },
                  ),
                  const SizedBox(height: 100),
                  CustomTextHeader(tabController: tabController, text: 'Choose a Password'),
                  CustomTextField(
                    tabController: tabController,
                    text: 'Enter Your password',
                    onChanged: (value) {
                      context.read<SignupCubit>().passwordChanged(value);
                      print(state.email);
                    },
                  ),
                ],
              ),
              CustomFooter(
                tabController: tabController,
                index: 1,
              ),
            ],
          ),
        );
      },
    );
  }
}
