import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/models/stock_model.dart';
import 'package:groww_flutter/features/stocks/widgets/explore_stock_widget.dart';

class ExploreStockGroupWidget extends StatelessWidget {
  const ExploreStockGroupWidget(
      {super.key,
      required this.title,
      required this.allStocks,
      this.seeMore = false});
  final bool? seeMore;
  final String title;
  final List<StockModel> allStocks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            title ?? 'Most traded on Groww',
            style: AppTextStyles.robotoStyle(
                fontSize: 15, weight: FontWeight.w700),
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          primary: false,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            ExploreStockWidget(
              allStocks: allStocks,
              currentIndex: 0,
            ),
            ExploreStockWidget(
              allStocks: allStocks,
              currentIndex: 1,
            ),
            ExploreStockWidget(
              allStocks: allStocks,
              currentIndex: 2,
            ),
            ExploreStockWidget(
              allStocks: allStocks,
            ),
          ],
        )
      ],
    );
  }
}
