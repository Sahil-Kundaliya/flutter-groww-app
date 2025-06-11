import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/home/widgets/market_cap_widget.dart';
import 'package:groww_flutter/features/stocks/cubits/stock_cubit.dart';
import 'package:groww_flutter/features/stocks/cubits/stock_state.dart';
import 'package:groww_flutter/features/widgets/tab_bar_delegate.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({super.key});

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<StockCubit>(
        create: (context) => StockCubit(context, this),
        child: BlocBuilder<StockCubit, StockState>(builder: (context, state) {
          final stockCubit = context.watch<StockCubit>();
          return Scaffold(
              backgroundColor: AppColors.whiteColor,
              body: SafeArea(
                child: DefaultTabController(
                  length: stockCubit.stocksTabList.length,
                  child: NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) => [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppImages.splashLogo,
                                        height: 30,
                                        width: 30,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 14),
                                        child: Text(
                                          'Stocks',
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
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: SizedBox(
                                height: 70,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  children: [
                                    MarketCapWidget(
                                      title: 'NIFTY 50',
                                      currentValue: '24,194.50',
                                      todayPercentage: '-27.40 (0.11%)',
                                      firstItemPedding: true,
                                    ),
                                    MarketCapWidget(
                                      title: 'BANK NIFTY',
                                      currentValue: '52,191.50',
                                      todayPercentage: '-16.00 (0.03%)',
                                    ),
                                    MarketCapWidget(
                                      title: 'Sensex',
                                      currentValue: '81,438.26',
                                      todayPercentage: '-194.73 (0.24%)',
                                    ),
                                  ],
                                ),
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

                            tabs: stockCubit.stocksTabList
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
                      children: stockCubit.allWidgets,
                    ),
                  ),
                ),
              ));
        }));
  }
}
