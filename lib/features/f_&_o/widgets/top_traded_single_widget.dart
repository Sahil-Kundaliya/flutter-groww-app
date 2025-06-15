import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/f_&_o/models/top_traded_model.dart';

class TopTradedSingleWidget extends StatelessWidget {
  const TopTradedSingleWidget(
      {super.key, required this.singleTopTradedStockFuture});
  final TopTradedModel singleTopTradedStockFuture;

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
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            singleTopTradedStockFuture.image,
            height: 35,
            width: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              getStockTitle(), //    'Triveni Turbine',
              style: AppTextStyles.robotoStyle(
                  fontSize: 12, weight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              '₹ ${singleTopTradedStockFuture.currentValue}', //${'68.15'}
              style: AppTextStyles.robotoStyle(
                  fontSize: 12, weight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              "${singleTopTradedStockFuture.todaysValue}(${singleTopTradedStockFuture.todaysPercentage}%)", // '-3.04(4.27%)',
              style: AppTextStyles.robotoStyle(
                  fontSize: 11,
                  weight: FontWeight.w600,
                  color: singleTopTradedStockFuture.isPositive
                      ? AppColors.greenColor
                      : AppColors.redColor),
            ),
          ),
        ],
      ),
    );
  }

  String getStockTitle() {
    String stockTitle = (singleTopTradedStockFuture.title.length > 8
            ? singleTopTradedStockFuture.title.substring(0, 8)
            : singleTopTradedStockFuture.title)
        .toUpperCase();
    return "$stockTitle 26 Jun Fut";
  }
}
