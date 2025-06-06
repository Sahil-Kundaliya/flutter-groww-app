import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class TodayMovesWidget extends StatelessWidget {
  const TodayMovesWidget(
      {super.key,
      required this.titie,
      this.isSelected = false,
      this.dropdownIcons = false});
  final String titie;
  final bool? isSelected;
  final bool? dropdownIcons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected == true ? Colors.grey[200] : AppColors.whiteColor,
            border: Border.all(
                color: isSelected == true
                    ? AppColors.blackColor
                    : AppColors.customGreyColor)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                titie ?? 'Gainers',
                style: AppTextStyles.robotoStyle(
                    fontSize: 12, weight: FontWeight.w400),
              ),
              dropdownIcons == true
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.unfold_more_sharp,
                            size: 14,
                          ),
                        ],
                      ),
                    )
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
