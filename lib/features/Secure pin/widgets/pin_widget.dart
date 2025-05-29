import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';

class PinWidget extends StatelessWidget {
  const PinWidget(
      {super.key, required this.hasFocus, required this.hasPassword});
  final bool hasFocus;
  final bool hasPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
                color: hasFocus
                    ? AppColors.blackColor
                    : AppColors.customGreyColor)),
        child: Center(
          child: hasPassword
              ? CircleAvatar(
                  radius: 6,
                  backgroundColor: AppColors.blackColor,
                )
              : SizedBox(),
        ),
      ),
    );
  }
}
