import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/models/stock_model.dart';
import 'package:groww_flutter/features/stocks/widgets/explore_stock_widget.dart';

class ExploreStockGroupWidget extends StatelessWidget {
  const ExploreStockGroupWidget(
      {super.key,
      required this.allStocks,
      this.title,
      this.onlyShowTop = false,
      this.seeMore = false,
      this.subTitle});
  final bool? seeMore, onlyShowTop;
  final String? title, subTitle;
  final List<StockModel> allStocks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title ?? 'Most traded on Groww',
                  style: AppTextStyles.robotoStyle(
                      fontSize: 15, weight: FontWeight.w700),
                ),
                if (subTitle != null)
                  Row(
                    children: [
                      Text(
                        subTitle ?? 'See more',
                        style: AppTextStyles.robotoStyle(
                            color: AppColors.customGreyColor,
                            fontSize: 12,
                            weight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: AppColors.customGreyColor,
                        ),
                      )
                    ],
                  )
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GridView.count(
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
              if (onlyShowTop == false)
                ExploreStockWidget(
                  allStocks: allStocks,
                  currentIndex: 2,
                ),
              if (onlyShowTop == false)
                ExploreStockWidget(
                  allStocks: allStocks,
                  currentIndex: seeMore == false ? 4 : null,
                ),
            ],
          ),
        )
      ],
    );
  }
}
