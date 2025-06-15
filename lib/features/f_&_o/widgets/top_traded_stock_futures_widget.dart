import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/f_&_o/models/top_traded_model.dart';
import 'package:groww_flutter/features/f_&_o/widgets/top_traded_single_widget.dart';

class TopTradedStockFuturesWidget extends StatelessWidget {
  const TopTradedStockFuturesWidget(
      {super.key,
      required this.topTradedStockFutures,
      required this.mainTitle});
  final List<TopTradedModel> topTradedStockFutures;
  final String mainTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 25, bottom: 15),
          child: Text(
            mainTitle, // 'Top traded stock futures'
            style: AppTextStyles.robotoStyle(
                fontSize: 15, weight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, right: 12, left: 12),
          child: GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 1.1,
            children: <Widget>[
              TopTradedSingleWidget(
                singleTopTradedStockFuture: topTradedStockFutures[0],
              ),
              TopTradedSingleWidget(
                singleTopTradedStockFuture: topTradedStockFutures[1],
              ),
              TopTradedSingleWidget(
                singleTopTradedStockFuture: topTradedStockFutures[2],
              ),
              TopTradedSingleWidget(
                singleTopTradedStockFuture: topTradedStockFutures[3],
              )
            ],
          ),
        ),
      ],
    );
  }
}
