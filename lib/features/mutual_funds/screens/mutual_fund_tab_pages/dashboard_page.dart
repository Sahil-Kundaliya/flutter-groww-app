import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already invested somewhere?',
              style: AppTextStyles.robotoStyle(
                  color: AppColors.blackColor,
                  fontSize: 14,
                  weight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                'Manage 7 analayse all your mutual fund. holding on one dashboard',
                textAlign: TextAlign.center,
                style: AppTextStyles.robotoStyle(
                    color: AppColors.greyColor,
                    fontSize: 12,
                    weight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.greyColor.shade300),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.file_download_outlined,
                        size: 18,
                        color: AppColors.blackColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          'Import external funds',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.robotoStyle(
                              color: AppColors.blackColor,
                              fontSize: 12,
                              weight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
