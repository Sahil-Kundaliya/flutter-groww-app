import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/features/f_&_o/cubits/f_o_state.dart';
import 'package:groww_flutter/features/f_&_o/models/top_traded_model.dart';
import 'package:groww_flutter/features/f_&_o/screens/f_&_o_tab_pages/explore_page.dart';
import 'package:groww_flutter/features/f_&_o/screens/f_&_o_tab_pages/orders_page.dart';
import 'package:groww_flutter/features/f_&_o/screens/f_&_o_tab_pages/position_page.dart';
import 'package:groww_flutter/features/stocks/widgets/tab_view_widgets/all_watchlist_widget.dart';

class FOCubit extends Cubit<FOState> {
  FOCubit(BuildContext context, TickerProvider tothis)
      : super(FOInitialState()) {
    initialState(tothis);
  }
  late final Random random;
  List<TopTradedModel> topTraded = [];

  late TabController tabController;

  initialState(TickerProvider tothis) {
    random = Random();
    addDummyData();
    tabController = TabController(
      length: fAndOList.length,
      vsync: tothis,
    );
  }

  List<String> fAndOList = ["Explore", "Positions", "Orders", "All watchlists"];

  List<Widget> allWidgets = [
    ExploreScreen(),
    PositionScreen(),
    OrdersScreen(),
    AllWatchlistWidget()
  ];

  void addDummyData() {
    for (var i = 0; i < 6; i++) {
      bool isPositive = random.nextBool();
      topTraded.add(TopTradedModel(
          title: getTitle(i),
          currentValue:
              double.parse((random.nextDouble() * 81000).toStringAsFixed(2)),
          todaysValue:
              "${isPositive ? "+" : "-"}${double.parse((random.nextDouble() * 800).toStringAsFixed(2))}(${(random.nextDouble() * 6).toStringAsFixed(2)}%)",
          isPositive: isPositive,
          image: AppImages.dummyStocks));
    }
    emit(FOUpdateState());
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return "NIFTY 50";
      case 1:
        return "SENSEX";
      case 2:
        return "BANK NIFTY";
      case 3:
        return "Tata Motors";
      case 4:
        return "Interglobe Aviation";
      case 5:
        return "Reliance Industries";

      default:
        return "NIFTY 50";
    }
  }
}
