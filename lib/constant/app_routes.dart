import 'package:flutter/material.dart';
import 'package:groww_flutter/features/Secure_pin/screens/pin_page.dart';
import 'package:groww_flutter/features/home/screens/home_page.dart';
import 'package:groww_flutter/features/splash/screens/splash_page.dart';

class AppRoutes {
  static final AppRoutes _appRoutes = AppRoutes();
  static AppRoutes get instance => _appRoutes;

  static String splashScreen = '/';

  Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashScreen(),
    PinScreen.pinScreen: (context) => const PinScreen(),
    HomeScreen.homeScreen: (context) => const HomeScreen(),
  };
}
