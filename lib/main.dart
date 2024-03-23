import 'package:flutter/material.dart';
import 'package:graduation_project_2024/Features/onbording/widgets/logo%20&%20name.dart';
import 'package:graduation_project_2024/Screens/regestration_page.dart';

void maim(){
  runApp(NetPharmacyApp());
}
class NetPharmacyApp extends StatelessWidget {
  const NetPharmacyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: //SignUpScreen(),
      LogoAndName(),
    );
  }
}