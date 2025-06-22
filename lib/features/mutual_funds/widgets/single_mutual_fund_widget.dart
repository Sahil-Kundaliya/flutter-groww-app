import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class SingleMutualFundWidget extends StatelessWidget {
  const SingleMutualFundWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.currentPercentage,
      required this.years,
      required this.tradImage,
      this.rating,
      this.lastIndex});
  final bool? lastIndex;
  final String tradImage, title, subTitle, currentPercentage, years;
  final int? rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                tradImage, // AppImages.triveniTurbineStocks,
                height: 30,
                width: 35,
                fit: BoxFit.contain,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title, // 'NIFTY 50',
                                style: AppTextStyles.robotoStyle(
                                    fontSize: 12, weight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(
                                    subTitle, // 'NIFTY 50',
                                    style: AppTextStyles.robotoStyle(
                                        color: AppColors.greyColor,
                                        fontSize: 10,
                                        weight: FontWeight.w400),
                                  ),
                                  if (rating != null)
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: " • $rating", // 'NIFTY 50',
                                        style: AppTextStyles.robotoStyle(
                                            color: AppColors.greyColor,
                                            fontSize: 10,
                                            weight: FontWeight.w400),
                                      ),
                                      TextSpan(
                                        text: "★",
                                        style: AppTextStyles.robotoStyle(
                                            color: AppColors.greyColor,
                                            fontSize: 12,
                                            weight: FontWeight.w400),
                                      ),
                                    ])),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                currentPercentage,
                                style: AppTextStyles.robotoStyle(
                                    fontSize: 12, weight: FontWeight.w700),
                              ),
                              Text(
                                years,
                                style: AppTextStyles.robotoStyle(
                                    color: AppColors.greyColor,
                                    fontSize: 11,
                                    weight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          if (lastIndex == true)
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Divider(
                thickness: 0.4,
                color: AppColors.customGreyColor,
              ),
            )
        ],
      ),
    );
  }
}
