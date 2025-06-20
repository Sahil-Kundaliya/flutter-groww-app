import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/dummy_stocks.dart';
import 'package:groww_flutter/features/mutual_funds/cubits/mutual_state.dart';
import 'package:groww_flutter/features/mutual_funds/models/collection_model.dart';
import 'package:groww_flutter/features/mutual_funds/models/mutual_fund_model.dart';
import 'package:groww_flutter/features/mutual_funds/screens/mutual_fund_tab_pages/dashboard_page.dart';
import 'package:groww_flutter/features/mutual_funds/screens/mutual_fund_tab_pages/explore_page.dart';
import 'package:groww_flutter/features/mutual_funds/screens/mutual_fund_tab_pages/sip_page.dart';
import 'package:groww_flutter/features/mutual_funds/screens/mutual_fund_tab_pages/watchlist_page.dart';

class MutualCubit extends Cubit<MutualState> {
  MutualCubit(BuildContext context, TickerProvider tothis)
      : super(MutualInitialState()) {
    initialState(tothis);
  }

  late TabController tabController;
  late final Random random;
  List<String> mutualTabList = ["Explore", "Dashborad", "SIPs", "Watchlist"];
  String info =
      "Groww Invest Tech Pvt. Ltd.\n(Formerly known as Nextbillion Technology Pvt. Ltd.)\nSEBI-Stock Broker-INZ000301838";

  initialState(TickerProvider tothis) {
    random = Random();
    setmutualFund();
    tabController = TabController(
      length: mutualTabList.length,
      vsync: tothis,
    );
  }

  void setmutualFund() {
    List<DummyStockModel> allStocks = List.of(DummyStocks.allDummyStocks);
    allStocks.shuffle();
    int randomInt = random.nextInt(2);
    int? rating;
    if (randomInt == 1) {
      rating = 4;
    } else if (randomInt == 2) {
      rating = 5;
    }

    for (var i = 0; i < 7; i++) {
      topMutualFunds.add(MutualFundModel(
          title: topMutualFundsTitle[i],
          subTitle: topMutualFundsType[i],
          currentPercentage: (random.nextDouble() * 60) + 20,
          year: "5Y",
          image: allStocks[i].stockImage,
          rating: rating));
    }
  }

  List<Widget> allWidgets = [
    ExploreScreen(),
    DashboardScreen(),
    SipScreen(),
    WatchlistScreen()
  ];
  List<CollectionModel> allCollectionItem = [
    CollectionModel(
        collectionTitle: "Hight return",
        collectionIcon: Icons.account_balance_sharp),
    CollectionModel(
        collectionTitle: "SIP with 100", collectionIcon: Icons.timelapse_sharp),
    CollectionModel(
        collectionTitle: "Gold Funds", collectionIcon: Icons.balance_rounded),
    CollectionModel(
        collectionTitle: "Large Cap",
        collectionIcon: Icons.maps_home_work_sharp),
    CollectionModel(
        collectionTitle: "Mid Cap", collectionIcon: Icons.work_outline_rounded),
    CollectionModel(
        collectionTitle: "Small Cap",
        collectionIcon: Icons.add_business_outlined),
  ];

  List<CollectionModel> allProductAndTools = [
    CollectionModel(
        collectionTitle: "Import\nfunds",
        collectionIcon: Icons.arrow_downward_sharp),
    CollectionModel(
        collectionTitle: "NFOs", collectionIcon: Icons.campaign_sharp),
    CollectionModel(
        collectionTitle: "SIP\ncalculator",
        collectionIcon: Icons.percent_rounded),
    CollectionModel(
        collectionTitle: "Compare\nfunds",
        collectionIcon: Icons.query_stats_sharp),
  ];

  List<MutualFundModel> topMutualFunds = [];

  List<String> topMutualFundsTitle = [
    "SBI Bluechip Fund",
    "HDFC Top 100 Fund",
    "ICICI Prudential Equity & Debt Fund",
    "Axis Bluechip Fund",
    "Nippon India Small Cap Fund",
    "UTI Flexi Cap Fund",
    "Kotak Emerging Equity Fund"
  ];
  List<String> topMutualFundsType = [
    "Equity Large Cap", // SBI Bluechip Fund
    "Equity Large & Mid Cap", // HDFC Top 100 Fund
    "Equity Hybrid", // ICICI Prudential Equity & Debt Fund
    "Equity Large Cap", // Axis Bluechip Fund
    "Equity Small Cap", // Nippon India Small Cap Fund
    "Equity Flexi Cap", // UTI Flexi Cap Fund
    "Equity Mid Cap" // Kotak Emerging Equity Fund
  ];
}
