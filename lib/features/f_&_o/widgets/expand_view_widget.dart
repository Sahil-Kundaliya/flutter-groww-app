import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class ExpandViewWidget extends StatelessWidget {
  const ExpandViewWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: AppColors.customGreyColor,
          thickness: 0.5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title, // 'See more'
                style: AppTextStyles.robotoStyle(
                    fontSize: 12, weight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: AppColors.customGreyColor,
              )
            ],
          ),
        ),
        Divider(
          color: AppColors.customGreyColor,
          thickness: 0.5,
        ),
      ],
    );
  }
}
