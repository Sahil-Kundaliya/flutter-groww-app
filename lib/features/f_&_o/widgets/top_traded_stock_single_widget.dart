import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class TopTradedStockSingleWidget extends StatelessWidget {
  const TopTradedStockSingleWidget(
      {super.key,
      required this.title,
      required this.currentPrice,
      required this.todaysChange,
      required this.tradImage,
      required this.isPositive,
      this.lastIndex});
  final bool? lastIndex;
  final bool isPositive;
  final String tradImage, title, currentPrice, todaysChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            tradImage ?? AppImages.triveniTurbineStocks,
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
                            title ?? 'NIFTY 50',
                            style: AppTextStyles.robotoStyle(
                                fontSize: 14, weight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Text(
                                currentPrice ?? '25,141.40',
                                style: AppTextStyles.robotoStyle(
                                    fontSize: 12, weight: FontWeight.w400),
                              ),
                              Text(
                                todaysChange ?? '+123.42(0.15%)',
                                style: AppTextStyles.robotoStyle(
                                    color: isPositive
                                        ? AppColors.greenColor
                                        : AppColors.redColor,
                                    fontSize: 12,
                                    weight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  strokeAlign: 0.9,
                                  color: AppColors.customGreyColor)),
                          child: Icon(
                            Icons.link,
                            size: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                  if (lastIndex == true)
                    Divider(
                      thickness: 0.4,
                      color: AppColors.customGreyColor,
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
