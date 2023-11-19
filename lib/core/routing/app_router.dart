import 'package:care_book/core/routing/routes.dart';
import 'package:care_book/features/login/ui/login_screen.dart';
import 'package:care_book/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) {
          return const OnBoardingScreen();
        });
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) {
          return const LoginScreen();
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
