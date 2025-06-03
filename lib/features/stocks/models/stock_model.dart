class StockModel {
  final String image;
  final String name;
  final double currentValue;
  final String priceChange;

  StockModel({
    required this.image,
    required this.name,
    required this.currentValue,
    required this.priceChange,
  });

  // Optional: fromJson / toJson if working with APIs
  factory StockModel.fromJson(Map<String, dynamic> json) {
    return StockModel(
      image: json['image'],
      name: json['name'],
      currentValue: (json['currentValue'] as num).toDouble(),
      priceChange: json['priceChange'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'currentValue': currentValue,
      'priceChange': priceChange,
    };
  }
}
