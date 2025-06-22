import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/mutual_funds/cubits/mutual_cubit.dart';
import 'package:groww_flutter/features/mutual_funds/cubits/mutual_state.dart';
import 'package:groww_flutter/features/widgets/tab_bar_delegate.dart';

class MutualFundScreen extends StatefulWidget {
  const MutualFundScreen({super.key});

  @override
  State<MutualFundScreen> createState() => _MutualFundScreenState();
}

class _MutualFundScreenState extends State<MutualFundScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BlocProvider<MutualCubit>(
        create: (context) => MutualCubit(context, this),
        child: BlocBuilder<MutualCubit, MutualState>(builder: (context, state) {
          final mutualCubit = context.read<MutualCubit>();
          return SafeArea(
            child: DefaultTabController(
              length: mutualCubit.mutualTabList.length,
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
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
                                      'Mutual Funds',
                                      style: AppTextStyles.robotoStyle(
                                          fontSize: 18,
                                          weight: FontWeight.w600),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
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
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: TabBarDelegate(
                      TabBar(
                        // controller: StockCubit.tabController,
                        isScrollable: true,

                        tabs: mutualCubit.mutualTabList
                            .map((tabTitle) => Tab(text: tabTitle))
                            .toList(),
                        unselectedLabelColor: AppColors.customGreyColor,
                        indicatorColor: AppColors.blackColor,
                        labelColor: AppColors.blackColor,
                        dividerColor: AppColors.lightBorderColor,
                        tabAlignment: TabAlignment.start,
                        // onTap: (value) {
                        //   print('SSS ' + value.toString());
                        // },
                      ),
                    ),
                  ),
                ],
                body: TabBarView(
                  // controller: StockCubit.tabController,
                  children: mutualCubit.allWidgets,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
