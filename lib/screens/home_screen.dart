import 'package:dating_app/blocs/bloc/swipe_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widget/widgets.dart';
import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoaded) {
            return Column(
              children: [
                Draggable(
                  feedback: (state.users.isNotEmpty) ? UserCard(user: state.users[0]) : const Center(child: Text("No other cards")),
                  childWhenDragging: (state.users.length > 1) ? UserCard(user: state.users[1]) : const Center(child: Text("No other cards")),
                  onDragEnd: (details) {
                    if (details.velocity.pixelsPerSecond.dx < 0) {
                      context.read<SwipeBloc>().add(SwipeLeftEvent(user: state.users[0]));
                    } else {
                      context.read<SwipeBloc>().add(SwipeRightEvent(user: state.users[0]));
                    }
                  },
                  child: (state.users.isNotEmpty) ? UserCard(user: state.users[0]) : const Center(child: Text("No other cards")),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ChoiceButton(
                        width: 60,
                        height: 60,
                        size: 25,
                        color: Theme.of(context).colorScheme.secondary,
                        hasGradient: false,
                        icon: Icons.clear_rounded,
                      ),
                      const ChoiceButton(
                        width: 80,
                        height: 80,
                        size: 30,
                        color: Colors.white,
                        hasGradient: true,
                        icon: Icons.favorite,
                      ),
                      ChoiceButton(
                        width: 60,
                        height: 60,
                        size: 25,
                        color: Theme.of(context).colorScheme.primary,
                        hasGradient: false,
                        icon: Icons.watch_later,
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: Text("Something went wrong"),
            );
          }
        },
      ),
    );
  }
}
