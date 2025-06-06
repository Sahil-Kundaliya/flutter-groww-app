import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class YourFeedWidget extends StatelessWidget {
  const YourFeedWidget({super.key});
  final String info =
      "Groww Invest Tech Pvt. Ltd.\n(Formerly known as Nextbillion Technology Pvt. Ltd.)\nSEBI-Stock Broker - INZ000301838 | Member of NSE, BSE\nDP - IN-DP-417-2019";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your feed',
                style: AppTextStyles.robotoStyle(
                    fontSize: 15, weight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text(
                    'See more',
                    style: AppTextStyles.robotoStyle(
                        color: AppColors.customGreyColor,
                        fontSize: 12,
                        weight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: AppColors.customGreyColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Stack(
          clipBehavior:
              Clip.none, // allow children to overflow if you want them to peek
          children: [
            // Bottom‐most card
            Positioned(
              top:
                  15, // shift it down so its top is hidden behind the next card
              left: 15,
              right: 15,
              child: Container(
                height: 180,
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
                height: 180,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.customGreyColor)),

                // put whatever “empty” or background content you like here
              ),
            ),

            // Top card (fully visible)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.customGreyColor)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vedanta Declares 850% Dividend, Ex-Date Dec 24',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '56m ago',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Vedanta Ltd. declared an 850% dividend, amounting to 8.5 per share, …',
                    style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // Spacer(),
                  Divider(height: 1),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundImage: AssetImage(AppImages.dummyStocks),
                          ),
                          SizedBox(width: 8),
                          Text('Vedanta', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Text('₹448.05  +2.03%',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'About Groww',
                  style: AppTextStyles.robotoStyle(
                      color: AppColors.greyColor,
                      fontSize: 11,
                      weight: FontWeight.w400),
                ),
                Icon(
                  false
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_up,
                  size: 14,
                  color: AppColors.greyColor,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                info,
                textAlign: TextAlign.center,
                style: AppTextStyles.robotoStyle(
                    color: AppColors.greyColor,
                    fontSize: 11,
                    weight: FontWeight.w400),
              ),
            )
          ],
        )
      ],
    );
  }
}
