import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class SingleFundByGrowwWidget extends StatelessWidget {
  const SingleFundByGrowwWidget({super.key, this.showIFO = false});
  final bool showIFO;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.greyColor.shade300)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.splashLogo, height: 25, width: 25),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    "Groww Nifty india Internet ETF FoF Fund",
                    style: AppTextStyles.robotoStyle(
                        weight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.blackColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "27 Jun",
                      style: AppTextStyles.robotoStyle(
                          weight: FontWeight.w700,
                          fontSize: 11,
                          color: AppColors.blackColor),
                    ),
                    TextSpan(
                      text: " Ends in 9 days",
                      style: AppTextStyles.robotoStyle(
                          weight: FontWeight.w400,
                          fontSize: 10,
                          color: AppColors.blackColor),
                    )
                  ])),
                )
              ],
            ),
          ),
          if (showIFO)
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.blueColor.shade50),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    'NFO',
                    style: AppTextStyles.robotoStyle(
                        weight: FontWeight.w400,
                        fontSize: 10,
                        color: AppColors.blueAccentColor),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
