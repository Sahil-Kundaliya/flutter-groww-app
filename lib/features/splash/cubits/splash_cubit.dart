import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/features/splash/cubits/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(BuildContext context) : super(SplashPageState()) {
    showSplashPage(context);
  }

  void showSplashPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        // return Navigator.of(context)
        //     .pushReplacementNamed(GameMenuScreen.gameMenuScreen);
      },
    );
  }
}
