import 'package:flutter/material.dart';
import 'package:groww_flutter/features/Secure%20pin/screens/pin_page.dart';
import 'package:groww_flutter/features/splash/screens/splash_page.dart';

class AppRoutes {
  static final AppRoutes _appRoutes = AppRoutes();
  static AppRoutes get instance => _appRoutes;

  static String splashScreen = '/';

  Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashScreen(),
    PinScreen.pinScreen: (context) => const PinScreen(),
  };
}
