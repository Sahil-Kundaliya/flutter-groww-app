import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class SinglePopularFundWidget extends StatelessWidget {
  const SinglePopularFundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.greyColor.shade300)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  AppImages.triveniTurbineStocks,
                  height: 30,
                  width: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Motilal Oswal Midcap Fund",
                    style: AppTextStyles.robotoStyle(
                        weight: FontWeight.w700,
                        fontSize: 12,
                        color: AppColors.blackColor),
                  ),
                  Text(
                    '37.5%',
                    style: AppTextStyles.robotoStyle(
                        weight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColors.customGreenColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Equity Mid Cap . 5 ",
                      style: AppTextStyles.robotoStyle(
                          weight: FontWeight.w700,
                          fontSize: 11,
                          color: AppColors.greyColor.shade400),
                    ),
                    TextSpan(
                      text: "★",
                      style: AppTextStyles.robotoStyle(
                          weight: FontWeight.w700,
                          fontSize: 12,
                          color: AppColors.greyColor),
                    ),
                  ])),
                  Text(
                    '3 Y',
                    style: AppTextStyles.robotoStyle(
                        weight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColors.greyColor.shade400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
