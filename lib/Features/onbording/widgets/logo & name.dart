import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('Assets/svgs/logo.svg'),
        Container(
          
        ),
      ],
    );
  }
}