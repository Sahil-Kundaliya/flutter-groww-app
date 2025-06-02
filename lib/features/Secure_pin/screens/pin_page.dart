import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/Secure_pin/cubits/pin_cubit.dart';
import 'package:groww_flutter/features/Secure_pin/cubits/pin_state.dart';
import 'package:groww_flutter/features/Secure_pin/widgets/pin_widget.dart';
import 'package:groww_flutter/features/home/screens/home_page.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});
  static const String pinScreen = '/PinScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocProvider<PinCubit>(
        create: (context) => PinCubit(),
        child: BlocBuilder<PinCubit, PinState>(
            bloc: PinCubit(),
            builder: (context, state) {
              final pinCubit = context.watch<PinCubit>();
              return Scaffold(
                backgroundColor: AppColors.whiteColor,
                body: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                                height: 30, width: 30, AppImages.splashLogo),
                            Image.asset(
                                height: 30, width: 30, AppImages.dummyProfile),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                      ),
                      Text(
                        'Hi, Sahil Kundaliya',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.robotoStyle(
                            weight: FontWeight.w500, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          'Enter your Groww PIN',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.robotoStyle(
                              weight: FontWeight.w400, fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PinWidget(
                              hasPassword: pinCubit.password.first != '-1',
                              hasFocus: pinCubit.password.first == '-1',
                            ),
                            PinWidget(
                              hasPassword: pinCubit.password[1] != '-1',
                              hasFocus: pinCubit.password.first != '-1' &&
                                  pinCubit.password[1] == '-1',
                            ),
                            PinWidget(
                              hasPassword: pinCubit.password[2] != '-1',
                              hasFocus: pinCubit.password[1] != '-1' &&
                                  pinCubit.password[2] == '-1',
                            ),
                            PinWidget(
                              hasPassword: pinCubit.password[3] != '-1',
                              hasFocus: pinCubit.password[2] != '-1' &&
                                  pinCubit.password[3] == '-1',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Use fingerprint',
                            style: AppTextStyles.robotoStyle(
                                weight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColors.customGreenColor),
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            itemCount: pinCubit.keys.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 2,
                            ),
                            itemBuilder: (context, index) {
                              final key = pinCubit.keys[index];

                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(100),
                                  onTap: () {
                                    pinCubit.addPassword(
                                      key,
                                      () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                HomeScreen.homeScreen);
                                      },
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      key,
                                      style: AppTextStyles.robotoStyle(
                                        weight: FontWeight.w500,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              );
            }));
  }
}
