import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/f_&_o/cubits/f_o_cubit.dart';
import 'package:groww_flutter/features/f_&_o/cubits/f_o_state.dart';
import 'package:groww_flutter/features/f_&_o/widgets/expand_view_widget.dart';
import 'package:groww_flutter/features/f_&_o/widgets/top_movers_single_widget.dart';
import 'package:groww_flutter/features/stocks/widgets/today_moves_widget.dart';

class TopMoversWidget extends StatelessWidget {
  TopMoversWidget({super.key});
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FOCubit, FOState>(builder: (context, state) {
      return Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 12, top: 10, left: 12, right: 12),
            child: Row(
              children: [
                TodayMoversWidget(
                  titie: "Gainers",
                ),
                TodayMoversWidget(
                  titie: "Losers",
                ),
                Container(
                  height: 20,
                  width: 0.8,
                  color: AppColors.customGreyColor,
                ),
                SizedBox(width: 8),
                TodayMoversWidget(
                  titie: "1 day",
                  dropdownIcons: true,
                  isSelected: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Row(
              children: [
                Text(
                  'Company',
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
                Text(
                  'Market Price (1D%)',
                  style: AppTextStyles.robotoStyle(
                      fontSize: 12, weight: FontWeight.w600),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            itemBuilder: (context, index) {
              var topMovers = context.read<FOCubit>().topTraded[index];
              return TopMoversSingleWidget(
                title: topMovers.title,
                currentPrice:
                    "₹${(random.nextDouble() * 2000).toStringAsFixed(2)}",
                todaysChange:
                    '${(random.nextDouble() * 60).toStringAsFixed(2)}(${(random.nextDouble() * 8).toStringAsFixed(2)}%)',
                isPositive: random.nextBool(),
                tradImage: AppImages.dummyStocks,
                lastIndex: index != 4,
              );
            },
          ),
          ExpandViewWidget(
            title: 'See more F&O stocks',
          )
        ],
      );
    });
  }
}
