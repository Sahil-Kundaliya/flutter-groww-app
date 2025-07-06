import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/features/mutual_funds/models/collection_model.dart';
import 'package:groww_flutter/features/upi/cubits/upi_state.dart';

class UpiCubit extends Cubit<UpiState> {
  UpiCubit() : super(UpiInitialState());

  List<CollectionModel> allUpiItems = [
    CollectionModel(
        collectionTitle: "Activate UPI\nLite",
        collectionIcon: Icons.arrow_downward_sharp),
    CollectionModel(
        collectionTitle: "Pay\nanyone", collectionIcon: Icons.campaign_sharp),
    CollectionModel(
        collectionTitle: "SIP\ncalculator",
        collectionIcon: Icons.percent_rounded),
    CollectionModel(
        collectionTitle: "Compare\nfunds",
        collectionIcon: Icons.query_stats_sharp),
  ];
}
