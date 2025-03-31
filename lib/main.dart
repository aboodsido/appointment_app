import 'package:flutter/material.dart';

import 'appointment_app.dart';
import 'core/di/dependency.injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/extentions.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/routing/app_router.dart';

bool isLoggedIn = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // To fix the issue with the texts hidden in release mode
  // await ScreenUtil.ensureScreenSize();
  await checkLoggedUser();
  initGetIt();
  runApp(AppointmentApp(router: AppRouter()));
}

checkLoggedUser() async {
  String? userToken = await SharedPrefHelper.getString(SharedPrefKeys.token);
  if (userToken.isNullOrEmpty()) {
    isLoggedIn = false;
  } else {
    isLoggedIn = true;
  }
}
