import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class SingleCollectionWidget extends StatelessWidget {
  const SingleCollectionWidget(
      {super.key, required this.collectionName, required this.icon});
  final String collectionName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 35,
          color: AppColors.customGreenColor,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            collectionName, //'Collections'
            style: AppTextStyles.robotoStyle(
                weight: FontWeight.w400,
                fontSize: 10,
                color: AppColors.blackColor),
          ),
        ),
      ],
    );
  }
}
