import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/cubits/stock_cubit.dart';
import 'package:groww_flutter/features/stocks/cubits/stock_state.dart';
import 'package:groww_flutter/features/stocks/widgets/explore_stock_group_widget.dart';
import 'package:groww_flutter/features/stocks/widgets/today_moves_widget.dart';
import 'package:groww_flutter/features/stocks/widgets/your_feed_widget.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StockCubit, StockState>(builder: (context, state) {
      final stockCubit = context.watch<StockCubit>();

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExploreStockGroupWidget(
                seeMore: true,
                title: 'Most traded on Groww',
                allStocks: stockCubit.mostTradedStocks,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Products and tools',
                  style: AppTextStyles.robotoStyle(
                      fontSize: 15, weight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductsAndToolsWidget(
                      title: 'F&O',
                      icon: Icons.insert_chart_outlined_sharp,
                    ),
                    ProductsAndToolsWidget(
                      title: 'Events',
                      icon: Icons.event_available_rounded,
                    ),
                    ProductsAndToolsWidget(
                      title: 'Screener',
                      icon: Icons.filter_list_alt,
                    ),
                    ProductsAndToolsWidget(
                      title: 'IPO',
                      icon: Icons.campaign,
                    ),
                    ProductsAndToolsWidget(
                      title: 'Bonds',
                      icon: Icons.receipt_long,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Top Movers todays',
                  style: AppTextStyles.robotoStyle(
                      fontSize: 15, weight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  children: [
                    TodayMoversWidget(
                      titie: "Gainers",
                    ),
                    TodayMoversWidget(
                      titie: "Losers",
                    ),
                    Container(
                      height: 20,
                      width: 0.8,
                      color: AppColors.customGreyColor,
                    ),
                    SizedBox(width: 8),
                    TodayMoversWidget(
                      titie: "Large cap",
                      dropdownIcons: true,
                      isSelected: true,
                    ),
                  ],
                ),
              ),
              ExploreStockGroupWidget(
                seeMore: true,
                allStocks: stockCubit.mostTradedStocks,
              ),
              ExploreStockGroupWidget(
                seeMore: true,
                title: 'Most traded in MTF',
                allStocks: stockCubit.mostTradedStocks,
              ),
              ExploreStockGroupWidget(
                seeMore: false,
                title: 'Top intraday',
                subTitle: "Intraday screener",
                allStocks: stockCubit.mostTradedStocks,
              ),
              ExploreStockGroupWidget(
                seeMore: false,
                title: 'Popular ETFs for SIP',
                subTitle: "See more",
                allStocks: stockCubit.mostTradedStocks,
                onlyShowTop: true,
              ),
              ExploreStockGroupWidget(
                seeMore: false,
                title: 'Stock in news',
                subTitle: "Market news",
                allStocks: stockCubit.mostTradedStocks,
              ),
              YourFeedWidget(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class ProductsAndToolsWidget extends StatelessWidget {
  const ProductsAndToolsWidget(
      {super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
        ),
        Text(
          title,
          style:
              AppTextStyles.robotoStyle(fontSize: 12, weight: FontWeight.w500),
        )
      ],
    );
  }
}
