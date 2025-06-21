import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_cubit.dart';
import 'package:docdoc/features/home/ui/screens/home_screen.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/screens/login_screen.dart';
import 'package:docdoc/features/onboarding/screens/onboarding_screen.dart';
import 'package:docdoc/features/sign_up/logic/signup_cubit/signup_cubit.dart';
import 'package:docdoc/features/sign_up/ui/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //  this args is used to pass data between screens like this arguments: arguyment as className
    // final args = settings.arguments;
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: const SignupScreen(),
              ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => HomeCubit(getIt())..getSpecialization(),
                child: const HomeScreen(),
              ),
        );

      default:
        return null;
    }
  }
}
