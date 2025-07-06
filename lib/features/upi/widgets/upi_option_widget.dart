import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class UpiOptionWidget extends StatelessWidget {
  const UpiOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'UPI Options',
            style: AppTextStyles.robotoStyle(
                fontSize: 16, weight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.greyColor.shade300,
                            child: Icon(
                              Icons.account_balance,
                              size: 16,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            'Bank transfer',
                            style: AppTextStyles.robotoStyle(
                                fontSize: 12, weight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    if (true)
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 5),
                        child: Divider(
                          thickness: 0.4,
                          color: AppColors.customGreyColor,
                        ),
                      )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
