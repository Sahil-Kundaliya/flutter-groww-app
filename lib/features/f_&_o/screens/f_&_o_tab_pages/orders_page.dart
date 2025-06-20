import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

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
            'You have no open orders',
            style: AppTextStyles.robotoStyle(
                color: AppColors.blackColor,
                fontSize: 18,
                weight: FontWeight.w700),
          ),

          Text(
            'All orders',
            style: AppTextStyles.robotoStyle(
                color: AppColors.greenColor,
                fontSize: 11,
                weight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
