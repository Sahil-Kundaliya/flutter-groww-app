import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/mutual_funds/models/collection_model.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/single_product_tool_widget.dart';

class ProductsAndToolsWidget extends StatelessWidget {
  const ProductsAndToolsWidget({super.key, required this.allProductAndTools});
  final List<CollectionModel> allProductAndTools;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Products & tools',
            style: AppTextStyles.robotoStyle(
                weight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.blackColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                allProductAndTools.length,
                (index) {
                  var indexTool = allProductAndTools[index];
                  return SingleProductToolWidget(
                    toolName: indexTool.collectionTitle,
                    toolIcon: indexTool.collectionIcon,
                  );
                },
              )),
        )
      ],
    );
  }
}
