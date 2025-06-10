import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/widgets/mini_line_chart.dart';

class SingleStockWidget extends StatelessWidget {
  const SingleStockWidget(
      {super.key,
      required this.stockName,
      required this.totalStock,
      required this.isPositive,
      required this.amount,
      required this.totalAmount,
      required this.stockValue});
  final String stockName, totalStock, amount, totalAmount;
  final bool isPositive;
  final List<double> stockValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stockName ?? 'Tube Investments',
                  style: AppTextStyles.robotoStyle(
                      fontSize: 14, weight: FontWeight.w400),
                ),
                Text(
                  '$totalStock share',
                  style: AppTextStyles.robotoStyle(
                      color: AppColors.greyColor,
                      fontSize: 10,
                      weight: FontWeight.w400),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: MiniLineChart(
                      data: stockValue,
                      lineColor: isPositive
                          ? AppColors.greenColor
                          : AppColors.redColor,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  amount ?? '₹3,039.50',
                  style: AppTextStyles.robotoStyle(
                      color: isPositive
                          ? AppColors.greenColor
                          : AppColors.redColor,
                      fontSize: 14,
                      weight: FontWeight.w400),
                ),
                Text(
                  totalAmount ?? '(₹4,029.38)',
                  style: AppTextStyles.robotoStyle(
                      color: AppColors.blackColor,
                      fontSize: 12,
                      weight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Divider(
            color: AppColors.customGreyColor,
            thickness: 0.6,
          ),
        )
      ],
    );
  }
}
