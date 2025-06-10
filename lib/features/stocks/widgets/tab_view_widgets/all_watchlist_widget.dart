import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';

class AllWatchlistWidget extends StatelessWidget {
  const AllWatchlistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 Watchlists',
                    style: AppTextStyles.robotoStyle(
                        fontSize: 12, weight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.customGreyColor),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.push_pin_outlined,
                            size: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              'Pin',
                              style: AppTextStyles.robotoStyle(
                                  fontSize: 10, weight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 20),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor:
                              const Color.fromARGB(255, 244, 218, 249),
                          child: Text(
                            'V',
                            style: AppTextStyles.robotoStyle(
                                fontSize: 11, weight: FontWeight.w400),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: AppColors.whiteColor,
                            child: Center(
                              child: Icon(
                                Icons.push_pin,
                                color: AppColors.customGreenColor,
                                size: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Text(
                          'View',
                          style: AppTextStyles.robotoStyle(
                              fontSize: 14, weight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 75),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: AppColors.customGreenColor,
                    size: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      'Add Watchlist',
                      style: AppTextStyles.robotoStyle(
                          color: AppColors.customGreenColor,
                          fontSize: 12,
                          weight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
