import 'package:flutter/material.dart';
import 'package:graduation_project_2024/Core/routing/routes.dart';
import 'package:graduation_project_2024/Features/onbording/onbording_screen.dart';
import 'package:graduation_project_2024/Screens/regestration_page.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.OnBoardingScreen:
      return MaterialPageRoute(
        builder: (_)=>OnboardingScreen()
        );
        case Routes.SignUpScreen:
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