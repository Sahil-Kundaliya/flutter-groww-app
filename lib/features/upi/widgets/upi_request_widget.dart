import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class UpiRequestWidget extends StatelessWidget {
  const UpiRequestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 12),
          child: Text(
            'UPI Requests',
            style: AppTextStyles.robotoStyle(
                fontSize: 16, weight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.greyColor)),
            width: double.infinity,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.adf_scanner_outlined,
                    size: 80,
                  ),
                  Text(
                    'No pending IPO/UPL requests',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 12, weight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
