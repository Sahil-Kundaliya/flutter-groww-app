import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_images.dart';
import 'package:groww_flutter/features/home/cubits/home_cubit.dart';
import 'package:groww_flutter/features/home/cubits/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String homeScreen = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          final homeCubit = context.watch<HomeCubit>();
          return Scaffold(
            backgroundColor: AppColors.whiteColor,
            body: homeCubit.mainPage(),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: AppColors.whiteColor,
              currentIndex: homeCubit.currentBottomBarIndex,
              onTap: (value) {
                homeCubit.changeBottomBarIndex(value);
              },
              selectedLabelStyle:
                  TextStyle(fontSize: 10), // Size for selected item
              unselectedLabelStyle:
                  TextStyle(fontSize: 10), // Size for unselected items
              // selectedItemColor: AppColors.indigoColor,
              // unselectedItemColor: AppColors.greyColor,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        AppImages.stocksBottom,
                        color: getBottomItemColor(
                            homeCubit.currentBottomBarIndex, 0),
                        height: 22,
                        width: 22,
                      ),
                    ),
                    label: 'Stocks'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Icon(
                        Icons.insert_chart_outlined_rounded,
                        size: 25,
                        color: getBottomItemColor(
                            homeCubit.currentBottomBarIndex, 1),
                      ),
                    ),
                    label: 'F & O'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        AppImages.mutualFundsBottom,
                        height: 22,
                        color: getBottomItemColor(
                            homeCubit.currentBottomBarIndex, 2),
                        width: 22,
                      ),
                    ),
                    label: 'Mutual Funds'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        AppImages.upiBottom,
                        height: 22,
                        width: 22,
                        color: getBottomItemColor(
                            homeCubit.currentBottomBarIndex, 3),
                      ),
                    ),
                    label: 'UPI')
              ],
            ),
          );
        }));
  }

  Color getBottomItemColor(int currentIndex, int itemIndex) {
    if (currentIndex == itemIndex) {
      return AppColors.indigoColor;
    }
    return AppColors.greyColor;
  }
}
