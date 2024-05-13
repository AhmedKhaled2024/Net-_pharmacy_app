import 'package:flutter/material.dart';
import 'package:graduation_project_2024/Core/routing/routes.dart';
import 'package:graduation_project_2024/Features/login/ui/login_page.dart';
import 'package:graduation_project_2024/Features/onbording/onbording_screen.dart';
import 'package:graduation_project_2024/Screens/regestration_page.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
      return MaterialPageRoute(
        builder: (_)=>const OnboardingScreen()
        );
        case Routes.loginScreen:
         return MaterialPageRoute(
        builder: (_)=>  BlocProvider(
          create: (context) => SubjectBloc(),
          child:  LoginScreen(),
        )
        );
        case Routes.signUpScreen:
         return MaterialPageRoute(
        builder: (_)=>SignUpScreen()
        );
        default:
           return MaterialPageRoute(
        builder: (_) =>Scaffold(
          body: Center(
            child: Text('No rout defined for ${settings.name}'),
          ),
        ),
           );
    }
  }
}