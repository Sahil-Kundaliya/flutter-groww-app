import 'package:flutter/material.dart';

class CollectionModel {
  final String collectionTitle;
  final IconData collectionIcon;

  CollectionModel(
      {required this.collectionTitle, required this.collectionIcon});

  factory CollectionModel.fromJson(Map<String, dynamic> json) {
    return CollectionModel(
      collectionTitle: json['collectionTitle'],
      collectionIcon: json['collectionIcon'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "collectionTitle": collectionTitle,
      "collectionIcon": collectionIcon
    };
  }
}
