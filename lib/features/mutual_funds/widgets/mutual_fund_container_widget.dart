import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class MutualFundContainerWidget extends StatelessWidget {
  const MutualFundContainerWidget(
      {super.key, required this.title, this.leadingWidget, this.actionWidget});
  final Widget? leadingWidget;
  final Widget? actionWidget;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyColor.shade300),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Row(
            children: [
              if (leadingWidget != null) leadingWidget!,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  title,
                  style: AppTextStyles.robotoStyle(
                      weight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.blackColor),
                ),
              ),
              if (actionWidget != null) actionWidget!
            ],
          ),
        ),
      ),
    );
  }
}
