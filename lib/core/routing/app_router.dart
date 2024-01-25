import 'package:care_book/core/di/dependency_injection.dart';
import 'package:care_book/core/routing/routes.dart';
import 'package:care_book/features/home/ui/home_screen.dart';
import 'package:care_book/features/login/logic/cubit/login_cubit.dart';
import 'package:care_book/features/login/ui/login_screen.dart';
import 'package:care_book/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) {
          return const OnBoardingScreen();
        });
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          );
        });
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) {
          return const HomeScreen();
        });
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
