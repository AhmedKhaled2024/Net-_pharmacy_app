import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_2024/Core/di/dependency_injection.dart';
import 'package:graduation_project_2024/Core/routing/app_router.dart';
import 'package:graduation_project_2024/pharmacy_app.dart';


void maim() {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
   ScreenUtil.ensureScreenSize();
  //setupGetIt();
  runApp(NetPharmacyApp(
    appRouter: AppRouter(),
  ),
  );
}
