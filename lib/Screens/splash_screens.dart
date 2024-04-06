import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project_2024/Screens/home_screen.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Icons.home,
      nextScreen: HomeScreen(),
       splashTransition: SplashTransition.fadeTransition,
            //pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.blue
            );
   
  }
}