import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/features/home/widgets/tab_view_widgets/all_watchlist_widget.dart';
import 'package:groww_flutter/features/home/widgets/tab_view_widgets/explore_widget.dart';
import 'package:groww_flutter/features/home/widgets/tab_view_widgets/holding_widget.dart';
import 'package:groww_flutter/features/home/widgets/tab_view_widgets/view_widget.dart';
import 'package:groww_flutter/features/stocks/cubits/stock_state.dart';

class StockCubit extends Cubit<StockState> {
  StockCubit(BuildContext context, TickerProvider tothis)
      : super(StockInitialState()) {
    initialState(tothis);
  }
  late TabController tabController;

  initialState(TickerProvider tothis) {
    tabController = TabController(
      length: stocksTabList.length,
      vsync: tothis,
    );
  }

  List<String> stocksTabList = [
    "Explore",
    "Holdings",
    "View",
    "All watchlists"
  ];

  List<Widget> allWidgets = [
    ExploreWidget(),
    HoldingWidget(),
    ViewWidget(),
    AllWatchlistWidget()
  ];
}
