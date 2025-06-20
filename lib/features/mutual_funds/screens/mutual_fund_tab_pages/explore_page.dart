import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/mutual_funds/cubits/mutual_cubit.dart';
import 'package:groww_flutter/features/mutual_funds/cubits/mutual_state.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/all_mutual_funds_widget.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/collection_widget.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/funds_by_groww_widget.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/popular_funds_widget.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/products_and_tools_widget.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/single_collection_widget.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/start-sip_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MutualCubit, MutualState>(builder: (context, state) {
      final mutualCubit = context.read<MutualCubit>();
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StartSIPWidget(),
            SizedBox(
              height: 15,
            ),
            PopularFundsWidget(),
            SizedBox(
              height: 15,
            ),
            CollectionWidget(allCollectionItem: mutualCubit.allCollectionItem),
            SizedBox(
              height: 15,
            ),
            FundsByGrowwWidget(),
            ProductsAndToolsWidget(
              allProductAndTools: mutualCubit.allProductAndTools,
            ),
            AllMutualFundsWidget(
              topMutualFunds: mutualCubit.topMutualFunds,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Center(
                child: Text(
                  mutualCubit.info,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.robotoStyle(
                      color: AppColors.greyColor,
                      fontSize: 12,
                      weight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      );
    });
  }
}
