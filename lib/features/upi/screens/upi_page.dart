import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/upi/cubits/upi_cubit.dart';
import 'package:groww_flutter/features/upi/cubits/upi_state.dart';
import 'package:groww_flutter/features/upi/widgets/Upi_request_widget.dart';
import 'package:groww_flutter/features/upi/widgets/single_upi_item_widget.dart';
import 'package:groww_flutter/features/upi/widgets/upi_option_widget.dart';

class UpiScreen extends StatelessWidget {
  const UpiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: BlocProvider(
            create: (context) => UpiCubit(),
            child: BlocBuilder<UpiCubit, UpiState>(builder: (context, state) {
              var upiCubit = context.read<UpiCubit>();
              return Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18, right: 18, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppImages.splashLogo,
                              height: 30,
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: Text(
                                'Upi'.toUpperCase(),
                                style: AppTextStyles.robotoStyle(
                                    fontSize: 18, weight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Icon(
                                Icons.qr_code,
                                size: 30,
                              ),
                            ),
                            Image.asset(
                              AppImages.dummyProfile,
                              height: 30,
                              width: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: List.generate(
                                  upiCubit.allUpiItems.length,
                                  (index) {
                                    var indexTool = upiCubit.allUpiItems[index];
                                    return SingleUpiItemWidget(
                                      toolName: indexTool.collectionTitle,
                                      toolIcon: indexTool.collectionIcon,
                                    );
                                  },
                                )),
                          ),
                          UpiRequestWidget(),
                          UpiOptionWidget()
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ));
  }
}
