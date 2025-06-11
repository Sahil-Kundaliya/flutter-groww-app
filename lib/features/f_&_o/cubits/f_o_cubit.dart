import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/features/f_&_o/cubits/f_o_state.dart';
import 'package:groww_flutter/features/f_&_o/screens/f_&_o_tab_pages/explore_page.dart';
import 'package:groww_flutter/features/f_&_o/screens/f_&_o_tab_pages/orders_page.dart';
import 'package:groww_flutter/features/f_&_o/screens/f_&_o_tab_pages/position_page.dart';
import 'package:groww_flutter/features/stocks/widgets/tab_view_widgets/all_watchlist_widget.dart';

class FOCubit extends Cubit<FOState> {
  FOCubit(BuildContext context, TickerProvider tothis)
      : super(FOInitialState()) {
    initialState(tothis);
  }

  late TabController tabController;

  initialState(TickerProvider tothis) {
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
}
