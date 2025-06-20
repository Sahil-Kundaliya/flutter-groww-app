import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/single_fund_by_groww_widget.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/single_popular_fund_widget.dart';

class FundsByGrowwWidget extends StatelessWidget {
  const FundsByGrowwWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Funds by Groww",
                style: AppTextStyles.robotoStyle(
                    weight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.blackColor),
              ),
              Text(
                'View all',
                style: AppTextStyles.robotoStyle(
                    weight: FontWeight.w600,
                    fontSize: 12,
                    color: AppColors.customGreenColor),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 12, right: 12),
          child: SizedBox(
              height: 115,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: SingleFundByGrowwWidget(
                        showIFO: true,
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  Flexible(flex: 1, child: SingleFundByGrowwWidget()),
                ],
              )),
        )
      ],
    );
  }
}
