import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class TopMoversSingleWidget extends StatelessWidget {
  const TopMoversSingleWidget(
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
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            tradImage ?? AppImages.dummyStocks,
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
                      Text(
                        title ?? 'NIFTY 50',
                        style: AppTextStyles.robotoStyle(
                            fontSize: 14, weight: FontWeight.w400),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            currentPrice ?? '25,141.40',
                            style: AppTextStyles.robotoStyle(
                                fontSize: 12, weight: FontWeight.w400),
                          ),
                          Text(
                            "${isPositive ? '+' : '-'}$todaysChange" ??
                                '+123.42(0.15%)',
                            style: AppTextStyles.robotoStyle(
                                color: isPositive
                                    ? AppColors.greenColor
                                    : AppColors.redColor,
                                fontSize: 11,
                                weight: FontWeight.w400),
                          ),
                        ],
                      ),
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
