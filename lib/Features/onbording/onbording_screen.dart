import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(child: Text('Onboarding Screen',style: TextStyle(color: Colors.green),))
    );
  }
}