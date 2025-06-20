import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class StartSIPWidget extends StatelessWidget {
  const StartSIPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.greyColor.shade300)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Invest evenry month and grow\nyour wealth with SIP',
                    style: AppTextStyles.robotoStyle(
                        weight: FontWeight.w700,
                        fontSize: 14,
                        color: AppColors.blackColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.customGreenColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                        child: Text(
                          'Start a SIP',
                          style: AppTextStyles.robotoStyle(
                              weight: FontWeight.w700,
                              fontSize: 12,
                              color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Icon(
                Icons.calendar_month_outlined,
                size: 70,
                color: AppColors.customGreenColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
