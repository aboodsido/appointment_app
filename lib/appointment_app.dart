import 'package:appointments_app/core/routing/app_router.dart';
import 'package:appointments_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class AppointmentApp extends StatelessWidget {
  AppRouter router = AppRouter();

  AppointmentApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: router.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
