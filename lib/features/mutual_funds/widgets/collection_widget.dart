import 'package:flutter/material.dart';
import 'package:groww_flutter/constant/app_colors.dart';
import 'package:groww_flutter/constant/app_text_styles.dart';
import 'package:groww_flutter/features/mutual_funds/models/collection_model.dart';
import 'package:groww_flutter/features/mutual_funds/widgets/single_collection_widget.dart';

class CollectionWidget extends StatelessWidget {
  const CollectionWidget({super.key, required this.allCollectionItem});
  final List<CollectionModel> allCollectionItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Collections',
            style: AppTextStyles.robotoStyle(
                weight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.blackColor),
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 20),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.5,
                crossAxisCount: 3,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0),
            itemCount: allCollectionItem.length,
            itemBuilder: (BuildContext context, int index) {
              final collection = allCollectionItem[index];
              return SingleCollectionWidget(
                collectionName: collection.collectionTitle,
                icon: collection.collectionIcon,
              );
            }),
      ],
    );
  }
}
