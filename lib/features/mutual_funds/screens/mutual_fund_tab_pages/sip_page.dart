import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/popular_funds_widget.dart';

class SipScreen extends StatelessWidget {
  const SipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4,
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'No active SIPs',
                  style: AppTextStyles.robotoStyle(
                      color: AppColors.blackColor,
                      fontSize: 16,
                      weight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    'invest every month and grow your wealth',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.robotoStyle(
                        color: AppColors.greyColor,
                        fontSize: 12,
                        weight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.customGreenColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        child: Text(
                          'Start a SIP',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.robotoStyle(
                              color: AppColors.whiteColor,
                              fontSize: 12,
                              weight: FontWeight.w500),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: AppColors.greyColor.shade300,
        ),
        SizedBox(
          height: 30,
        ),
        PopularFundsWidget(
          title: 'SIPs under ₹500',
        ),
      ],
    );
  }
}
