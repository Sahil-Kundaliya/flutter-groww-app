import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/features/f_&_o/screens/f_&_o_page.dart';
import 'package:groww_flutter/features/home/cubits/home_state.dart';
import 'package:groww_flutter/features/mutual_funds/screens/mutual_fund_page.dart';
import 'package:groww_flutter/features/stocks/screens/stock_page.dart';
import 'package:groww_flutter/features/upi/screens/upi_page.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  int currentBottomBarIndex = 0;

  void changeBottomBarIndex(int newIndex) {
    currentBottomBarIndex = newIndex;
    emit(HomeUpdateState());
  }

  Widget mainPage() {
    switch (currentBottomBarIndex) {
      case 0:
        return StockScreen();
      case 1:
        return FAndOScreen();
      case 2:
        return MutualFundScreen();
      case 3:
        return UpiScreen();

      default:
        return StockScreen();
    }
  }
}
