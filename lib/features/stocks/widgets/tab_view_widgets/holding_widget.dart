import 'dart:math';

import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/widgets/holding_card_widget.dart';
import 'package:groww_flutter/features/stocks/widgets/single_stock_widget.dart';

class HoldingWidget extends StatelessWidget {
  HoldingWidget({super.key});
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HoldingCardWidget(),
            Column(
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
                  itemCount: 20,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  itemBuilder: (context, index) {
                    return SingleStockWidget(
                      stockName: "Tube Investments",
                      totalStock: (random.nextInt(23) + 1).toString(),
                      amount:
                          "₹${(random.nextDouble() * 2000).toStringAsFixed(2)}",
                      totalAmount:
                          '(₹${(random.nextDouble() * 2000).toStringAsFixed(2)})',
                      isPositive: random.nextBool(),
                      stockValue:
                          List.generate(20, (_) => random.nextDouble() * 8),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
