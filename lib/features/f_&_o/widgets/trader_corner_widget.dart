import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class TraderCornerWidget extends StatelessWidget {
  const TraderCornerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trader\'s Corner',
                style: AppTextStyles.robotoStyle(
                    fontSize: 15, weight: FontWeight.w700),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'See more',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 11, weight: FontWeight.w400),
                  ),
                  Dash(
                      direction: Axis.horizontal,
                      length: 45,
                      dashLength: 3,
                      dashGap: 1,
                      dashColor: AppColors.customGreyColor,
                      dashBorderRadius: 1,
                      dashThickness: 1),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: Stack(
            clipBehavior: Clip
                .none, // allow children to overflow if you want them to peek
            children: [
              // Bottom‐most card
              Positioned(
                top:
                    15, // shift it down so its top is hidden behind the next card
                left: 15,
                right: 15,
                child: Container(
                  height: 370,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.customGreyColor)),

                  // put whatever “empty” or background content you like here
                ),
              ),

              // Middle card
              Positioned(
                top: 10, // slightly less offset than the one below
                left: 10,
                right: 10,
                child: Container(
                  height: 370,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.customGreyColor)),

                  // put whatever “empty” or background content you like here
                ),
              ),

              // Top card (fully visible)
              Container(
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.customGreyColor)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Top option strategy for today\'s market',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          '56m ago',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 12),
                        ),
                      ),
                      Divider(
                        color: AppColors.customGreyColor,
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 220,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage(AppImages.mutualFundsBottom))),
                      ),
                      // Spacer(),
                      Divider(
                        color: AppColors.customGreyColor,
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage(AppImages.triveniTurbineStocks),
                            ),
                            SizedBox(width: 8),
                            Text('Nifty 50', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
