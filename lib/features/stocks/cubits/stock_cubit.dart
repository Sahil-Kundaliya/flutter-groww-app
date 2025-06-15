import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/features/stocks/cubits/stock_state.dart';
import 'package:groww_flutter/features/stocks/models/stock_model.dart';
import 'package:groww_flutter/features/stocks/widgets/tab_view_widgets/all_watchlist_widget.dart';
import 'package:groww_flutter/features/stocks/widgets/tab_view_widgets/explore_widget.dart';
import 'package:groww_flutter/features/stocks/widgets/tab_view_widgets/holding_widget.dart';
import 'package:groww_flutter/features/stocks/widgets/tab_view_widgets/view_widget.dart';

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

  List<StockModel> mostTradedStocks = [
    StockModel(
      name: "Suzlon Energy",
      image: AppImages.triveniTurbineStocks,
      currentValue: 68.15,
      priceChange: "-3.04 (4.27%)",
    ),
    StockModel(
      name: "Tata Motors",
      image: AppImages.triveniTurbineStocks,
      currentValue: 912.40,
      priceChange: "+8.23 (0.91%)",
    ),
    StockModel(
      name: "HDFC Bank",
      image: AppImages.triveniTurbineStocks,
      currentValue: 1625.50,
      priceChange: "-10.45 (0.64%)",
    ),
    StockModel(
      name: "Reliance Industries",
      image: AppImages.triveniTurbineStocks,
      currentValue: 2523.75,
      priceChange: "+15.30 (0.61%)",
    ),
    StockModel(
      name: "Infosys Ltd",
      image: AppImages.triveniTurbineStocks,
      currentValue: 1412.10,
      priceChange: "-5.12 (0.36%)",
    ),
    StockModel(
      name: "Adani Power",
      image: AppImages.triveniTurbineStocks,
      currentValue: 482.00,
      priceChange: "+9.70 (2.05%)",
    ),
    StockModel(
      name: "Wipro Ltd",
      image: AppImages.triveniTurbineStocks,
      currentValue: 443.85,
      priceChange: "+3.21 (0.73%)",
    ),
  ];
}
