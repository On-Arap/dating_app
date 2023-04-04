import 'package:dating_app/blocs/bloc/swipe_bloc.dart';
import 'package:dating_app/config/app_router.dart';
import 'package:dating_app/config/theme.dart';
import 'package:dating_app/screens/onboarding_screen.dart';
import 'package:dating_app/screens/profile_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'models/models.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SwipeBloc()..add(LoadUsersEvent(users: User.users))),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: OnBoardingScreen.routeName,
      ),
    );
  }
}
