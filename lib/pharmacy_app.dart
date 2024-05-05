import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_2024/Core/routing/app_router.dart';
import 'package:graduation_project_2024/Core/routing/routes.dart';
import 'package:graduation_project_2024/Core/theming/Colors.dart';
import 'Features/onbording/onbording_screen.dart';


class NetPharmacyApp extends StatelessWidget {
  const NetPharmacyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
        title: 'Net Pharmacy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor:ColorsManager.mainPurple,
          scaffoldBackgroundColor: Colors.white,
          
        ),
        initialRoute: Routes.OnBoardingScreen,
        
        onGenerateRoute: appRouter.generateRoute,
        
      ),
    );
  }
}