import 'dart:math';

import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/widgets/single_stock_widget.dart';

class ViewWidget extends StatelessWidget {
  ViewWidget({super.key});
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Sort',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 12, weight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.sort,
                      size: 15,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      Icons.code,
                      size: 15,
                    ),
                  ),
                  Text(
                    'Current(Invested)',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 12, weight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: (random.nextInt(12) + 1),
              padding: EdgeInsets.symmetric(vertical: 10),
              itemBuilder: (context, index) {
                return SingleStockWidget(
                  stockName: "Tube Investments",
                  totalStock: (random.nextInt(23) + 1).toString(),
                  amount: "₹${(random.nextDouble() * 2000).toStringAsFixed(2)}",
                  totalAmount:
                      '(₹${(random.nextDouble() * 2000).toStringAsFixed(2)})',
                  isPositive: random.nextBool(),
                  stockValue: List.generate(20, (_) => random.nextDouble() * 8),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Edit Watchlist',
                    style: AppTextStyles.robotoStyle(
                        color: AppColors.customGreenColor,
                        fontSize: 12,
                        weight: FontWeight.w700),
                  ),
                  Text(
                    'Add Stocks',
                    style: AppTextStyles.robotoStyle(
                        color: AppColors.customGreenColor,
                        fontSize: 12,
                        weight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
