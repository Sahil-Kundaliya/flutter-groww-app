import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/f_&_o/models/top_traded_model.dart';
import 'package:groww_flutter/features/f_&_o/widgets/expand_view_widget.dart';
import 'package:groww_flutter/features/f_&_o/widgets/top_trad_single_widget.dart';

class TopTradedListWidget extends StatelessWidget {
  const TopTradedListWidget({super.key, required this.allTopTradeds});
  final List<TopTradedModel> allTopTradeds;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 12),
          physics: NeverScrollableScrollPhysics(),
          itemCount: allTopTradeds.length,
          itemBuilder: (context, index) {
            var topTraded = allTopTradeds[index];
            return TopTradSingleWidget(
              title: topTraded.title,
              currentPrice: topTraded.currentValue.toString(),
              isPositive: topTraded.isPositive,
              todaysChange: topTraded.todaysValue,
              tradImage: topTraded.image,
              lastIndex: (allTopTradeds.length - 1) != index,
            );
          },
        ),
        ExpandViewWidget(
          title: 'See more',
        )
      ],
    );
  }
}
