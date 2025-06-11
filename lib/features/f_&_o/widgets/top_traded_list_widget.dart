import 'dart:math';

import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/features/f_&_o/widgets/top_trad_single_widget.dart';

class TopTradedListWidget extends StatelessWidget {
  TopTradedListWidget({super.key});
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return TopTradSingleWidget(
          title: 'NIFTY 50',
          currentPrice: '25,141.40',
          isPositive: random.nextBool(),
          todaysChange: '+123.42(0.15%)',
          tradImage: AppImages.dummyStocks,
          lastIndex: index != 29,
        );
      },
    );
  }
}
