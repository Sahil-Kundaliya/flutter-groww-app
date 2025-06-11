import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/f_&_o/widgets/top_traded_list_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 25),
              child: Text(
                'Top traded',
                style: AppTextStyles.robotoStyle(
                    fontSize: 15, weight: FontWeight.w700),
              ),
            ),
            TopTradedListWidget()
          ],
        ),
      ),
    );
  }
}
