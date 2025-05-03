import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/home/ui/screens/home_screen.dart';
import 'package:docdoc/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: const Center(child: Text("No route defined for ${Routes.onboarding}")),
              ),
        );
    }
  }
}
