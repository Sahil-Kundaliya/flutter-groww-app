import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/single_mutual_fund_widget.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Row(
            children: [
              Text(
                'Mutual Fund',
                style: AppTextStyles.robotoStyle(
                    fontSize: 12, weight: FontWeight.w600),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.code,
                  size: 15,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '1D Returens',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 10, weight: FontWeight.w600),
                  ),
                  Dash(
                      direction: Axis.horizontal,
                      length: 55,
                      dashLength: 3,
                      dashGap: 1,
                      dashColor: AppColors.customGreyColor,
                      dashBorderRadius: 1,
                      dashThickness: 1),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleMutualFundWidget(
            title: "SBI PSU Fund",
            subTitle: "Equity Thematic • NA",
            tradImage: AppImages.triveniTurbineStocks,
            lastIndex: true,
            currentPercentage: "1.21%",
            years: "1D",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleMutualFundWidget(
            title: "SBI Liquid Fund",
            subTitle: "Debt Thematic",
            tradImage: AppImages.triveniTurbineStocks,
            lastIndex: false,
            currentPercentage: "0.02%",
            years: "1D",
            rating: 2,
          ),
        ),
        Divider(
          color: AppColors.greyColor.shade300,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18, left: 12, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add funds',
                style: AppTextStyles.robotoStyle(
                    color: AppColors.customGreenColor,
                    fontSize: 12,
                    weight: FontWeight.w700),
              ),
              Text(
                'Edit Watchlist',
                style: AppTextStyles.robotoStyle(
                    color: AppColors.customGreenColor,
                    fontSize: 12,
                    weight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
