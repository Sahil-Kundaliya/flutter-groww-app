import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/f_&_o/cubits/f_o_cubit.dart';
import 'package:groww_flutter/features/f_&_o/cubits/f_o_state.dart';
import 'package:groww_flutter/features/f_&_o/widgets/top_movers_single_widget.dart';
import 'package:groww_flutter/features/f_&_o/widgets/top_movers_widget.dart';
import 'package:groww_flutter/features/f_&_o/widgets/top_traded_list_widget.dart';
import 'package:groww_flutter/features/stocks/widgets/today_moves_widget.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 25, left: 12),
            child: Text(
              'Top traded',
              style: AppTextStyles.robotoStyle(
                  fontSize: 15, weight: FontWeight.w700),
            ),
          ),
          TopTradedListWidget(
            allTopTradeds: context.read<FOCubit>().topTraded,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 25,
            ),
            child: Text(
              'Top Movers todays',
              style: AppTextStyles.robotoStyle(
                  fontSize: 15, weight: FontWeight.w700),
            ),
          ),
          TopMoversWidget(),
        ],
      ),
    );
  }
}
