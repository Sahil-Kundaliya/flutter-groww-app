import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/single_popular_fund_widget.dart';

class PopularFundsWidget extends StatelessWidget {
  const PopularFundsWidget({super.key, required this.title, this.subtitle});
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title, // "Popular Funds",
                style: AppTextStyles.robotoStyle(
                    weight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.blackColor),
              ),
              if (subtitle != null)
                Text(
                  subtitle ?? '', //  'All Mutual Funds',
                  style: AppTextStyles.robotoStyle(
                      weight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.customGreenColor),
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 12),
              itemCount: 3,
              itemBuilder: (context, index) {
                return SinglePopularFundWidget();
              },
            ),
          ),
        )
      ],
    );
  }
}
