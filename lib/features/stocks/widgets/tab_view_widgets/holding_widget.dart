import 'package:flutter/material.dart';
import 'package:groww_flutter/features/stocks/widgets/holding_card_widget.dart';

class HoldingWidget extends StatelessWidget {
  const HoldingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HoldingCardWidget(),
          ],
        ),
      ),
    );
  }
}
