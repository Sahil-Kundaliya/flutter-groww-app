import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class PositionScreen extends StatelessWidget {
  const PositionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(
          //   AppImages.dummyProfile,
          //   height: 100,
          //   width: 100,
          // ),
          Text(
            'No open F&O position',
            style: AppTextStyles.robotoStyle(
                color: AppColors.blackColor,
                fontSize: 18,
                weight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
