import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project_2024/Core/di/dependency_injection.dart';
import 'package:graduation_project_2024/Core/routing/routes.dart';
import 'package:graduation_project_2024/Features/login/logic/cubit/login_cubit.dart';
import 'package:graduation_project_2024/Features/login/ui/login_screen.dart';
import 'package:graduation_project_2024/Features/onbording/onbording_screen.dart';
import 'package:graduation_project_2024/Features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:graduation_project_2024/Features/sign_up/ui/sign_up_screen.dart';
import 'package:graduation_project_2024/Screens/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    //final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
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