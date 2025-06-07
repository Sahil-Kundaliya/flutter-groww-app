import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class HoldingCardAmountWidget extends StatelessWidget {
  const HoldingCardAmountWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      this.isTotal = false});
  final String title, subTitle;
  final bool? isTotal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? '1D returns',
            style: AppTextStyles.robotoStyle(
                fontSize: 12, weight: FontWeight.w400),
          ),
          Text(
            subTitle ?? '-₹5.75 (0.04%)',
            style: AppTextStyles.robotoStyle(
                fontSize: 12,
                weight: FontWeight.w700,
                color: isTotal == true
                    ? AppColors.blackColor
                    : AppColors.redColor),
          ),
        ],
      ),
    );
  }
}
