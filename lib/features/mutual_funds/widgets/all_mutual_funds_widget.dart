import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/f_&_o/widgets/expand_view_widget.dart';
import 'package:groww_flutter/features/mutual_funds/models/mutual_fund_model.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/mutual_fund_container_widget.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/single_mutual_fund_widget.dart';

class AllMutualFundsWidget extends StatelessWidget {
  AllMutualFundsWidget({super.key, required this.topMutualFunds});
  bool light = true;
  final List<MutualFundModel> topMutualFunds;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'All Mutual Funds',
            style: AppTextStyles.robotoStyle(
                weight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.blackColor),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.greyColor.shade300)),
                  child: Icon(
                    Icons.tune,
                    size: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 30,
                    width: 1,
                    color: AppColors.greyColor.shade300,
                  ),
                ),
                MutualFundContainerWidget(
                  title: "Sort by",
                  leadingWidget: Icon(
                    Icons.sort,
                    size: 12,
                  ),
                  actionWidget: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 12,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    light = !light;
                  },
                  child: MutualFundContainerWidget(
                      title: "Index only",
                      actionWidget: Container(
                        height: 15,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.greyColor.shade300
                            // border: Border.all(
                            //   color: AppColors.blackColor,
                            // )
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 6,
                                backgroundColor: light
                                    ? AppColors.whiteColor
                                    : AppColors.transparentColor,
                              ),
                              CircleAvatar(
                                radius: 6,
                                backgroundColor: !light
                                    ? AppColors.blackColor
                                    : AppColors.transparentColor,
                              )
                            ],
                          ),
                        ),
                      )),
                ),
                MutualFundContainerWidget(
                  title: 'Flexi cap',
                ),
                MutualFundContainerWidget(
                  title: 'sectoral',
                ),
                MutualFundContainerWidget(
                  title: '4+ ★',
                ),
                MutualFundContainerWidget(
                  title: 'Large Cap',
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Row(
            children: [
              Text(
                '1,540 funds',
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
                    '3Y Returens',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 12, weight: FontWeight.w600),
                  ),
                  Dash(
                      direction: Axis.horizontal,
                      length: 65,
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
          padding: const EdgeInsets.only(right: 12, left: 12, bottom: 8),
          child: ListView.builder(
            itemCount: topMutualFunds.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var topMutualFund = topMutualFunds[index];
              return SingleMutualFundWidget(
                title: topMutualFund.title,
                subTitle: topMutualFund.subTitle,
                currentPercentage:
                    '${topMutualFund.currentPercentage.toStringAsFixed(2)}%',
                years: topMutualFund.year,
                tradImage: topMutualFund.image,
                lastIndex: (topMutualFunds.length - 1) != index,
                rating: topMutualFund.rating,
              );
            },
          ),
        ),
        ExpandViewWidget(
          title: "View all",
        )
      ],
    );
  }
}
