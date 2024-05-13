import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_2024/Core/theming/Colors.dart';
import 'package:graduation_project_2024/Core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String? hintText;
  final Color?  backgroungColor;
  final TextStyle? inputeTextStyle;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      required this.hintText,
      this.inputeTextStyle,
      this.hintStyle,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      required this.validator, this.backgroungColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.mainPurple,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
           errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),

        hintStyle:hintStyle?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor:backgroundColor?? ColorsManager.moreLightGray
      ),
      obscureText:isObscureText?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      }
    );
  }
}
