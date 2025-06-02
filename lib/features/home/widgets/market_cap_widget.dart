import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class MarketCapWidget extends StatelessWidget {
  const MarketCapWidget({
    super.key,
    required this.title,
    required this.currentValue,
    required this.todayPercentage,
    this.firstItemPedding = false,
  });
  final String title, currentValue, todayPercentage;
  final bool firstItemPedding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: firstItemPedding ? 0 : 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.lightBorderColor)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? 'NIFTY 50',
                style: AppTextStyles.robotoStyle(
                    fontSize: 13, weight: FontWeight.w700),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    currentValue ?? '24,194.50',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 13, weight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    todayPercentage ?? '-27.40 (0.11%)',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 13,
                        color: AppColors.customRedColor,
                        weight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
