import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/cubits/stock_cubit.dart';
import 'package:groww_flutter/features/stocks/cubits/stock_state.dart';
import 'package:groww_flutter/features/stocks/widgets/explore_stock_group_widget.dart';

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
              )
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
