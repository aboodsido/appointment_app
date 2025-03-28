import 'package:flutter/material.dart';

import 'appointment_app.dart';
import 'core/di/dependency.injection.dart';
import 'core/routing/app_router.dart';

void main() {
  initGetIt();
  runApp(AppointmentApp(router: AppRouter()));
}
