import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class SingleProductToolWidget extends StatelessWidget {
  const SingleProductToolWidget(
      {super.key, required this.toolIcon, required this.toolName});
  final IconData toolIcon;
  final String toolName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.grey[200],
            child: Icon(
              toolIcon,
              size: 20,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                toolName,
                textAlign: TextAlign.center,
                style: AppTextStyles.robotoStyle(
                    weight: FontWeight.w400,
                    fontSize: 11,
                    color: AppColors.blackColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
