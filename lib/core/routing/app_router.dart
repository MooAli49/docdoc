import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/home/ui/screens/home_screen.dart';
import 'package:docdoc/features/login/ui/screens/login_screen.dart';
import 'package:docdoc/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //  this args is used to pass data between screens like this arguments: arguyment as className
    // final args = settings.arguments;
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text("No route defined for ${settings.name}"),
                ),
              ),
        );
    }
  }
}
