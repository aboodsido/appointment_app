import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appointment_app.dart';
import 'core/di/dependency.injection.dart';
import 'core/routing/app_router.dart';

void main() {
  // To fix the issue with the texts hidden in release mode
  // await ScreenUtil.ensureScreenSize();
  initGetIt();
  runApp(AppointmentApp(router: AppRouter()));
}
