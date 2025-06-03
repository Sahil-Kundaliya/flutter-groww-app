import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/models/stock_model.dart';

class ExploreStockWidget extends StatelessWidget {
  const ExploreStockWidget(
      {super.key, required this.allStocks, this.currentIndex});
  final List<StockModel> allStocks;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.customGreyColor),
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          currentIndex == null
              ? SizedBox(
                  width: 80,
                  child: Wrap(
                    runSpacing: 1,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      ImageWidget(
                        stockImage: allStocks[3].image,
                      ),
                      ImageWidget(
                        stockImage: allStocks[4].image,
                      ),
                      ImageWidget(
                        stockImage: allStocks[5].image,
                      ),
                      ImageWidget(
                        stockImage: allStocks[6].image,
                      ),
                    ],
                  ),
                )
              : Image.asset(
                  AppImages.dummyStocks,
                  height: 30,
                  width: 30,
                ),
          if (currentIndex != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                allStocks[currentIndex!].name ?? 'Triveni Turbine',
                style: AppTextStyles.robotoStyle(
                    fontSize: 12, weight: FontWeight.w400),
              ),
            ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (currentIndex != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    '₹ ${allStocks[currentIndex!].currentValue.toString() ?? '68.15'}',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 13, weight: FontWeight.w600),
                  ),
                ),
              if (currentIndex != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    allStocks[currentIndex!].priceChange ?? '-3.04(4.27%)',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 12,
                        weight: FontWeight.w400,
                        color: AppColors.redColor),
                  ),
                ),
              if (currentIndex == null)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'See more',
                      style: AppTextStyles.robotoStyle(
                        fontSize: 12,
                        weight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 12,
                      ),
                    )
                  ],
                ),
            ],
          ))
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.stockImage});
  final String stockImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 20,
        width: 20,
        child: Image.asset(
          stockImage ?? AppImages.dummyStocks,
        ),
      ),
    );
  }
}
