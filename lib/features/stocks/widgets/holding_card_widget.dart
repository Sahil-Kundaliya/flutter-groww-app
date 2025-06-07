import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/stocks/widgets/holding_card_amount_widget.dart';

class HoldingCardWidget extends StatelessWidget {
  const HoldingCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: AppColors.customGreyColor, width: 0.5)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HOLDINGS(13)',
                        style: GoogleFonts.roboto(
                            letterSpacing: 2,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "₹12,461.19",
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: AppColors.greyColor,
                        child: CircleAvatar(
                          backgroundColor: AppColors.whiteColor,
                          radius: 11,
                          child: Center(
                            child: Icon(
                              Icons.area_chart_rounded,
                              size: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.greyColor,
                          child: CircleAvatar(
                            backgroundColor: AppColors.whiteColor,
                            radius: 11,
                            child: Center(
                              child: Icon(
                                Icons.more_vert,
                                size: 13,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Divider(),
              ),
              HoldingCardAmountWidget(
                title: '1D returns',
                subTitle: '-₹5.75 (0.04%)',
              ),
              HoldingCardAmountWidget(
                title: "Total returns",
                subTitle: "-₹1,283.91(8.67%)",
              ),
              HoldingCardAmountWidget(
                title: "Invested",
                subTitle: "₹14,817.10",
                isTotal: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
