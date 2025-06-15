class TopTradedModel {
  final String title;
  final double currentValue;
  final String todaysValue;
  final String todaysPercentage;
  final String image;
  final bool isPositive;

  TopTradedModel(
      {required this.title,
      required this.currentValue,
      required this.todaysValue,
      required this.image,
      required this.isPositive,
      required this.todaysPercentage});

  factory TopTradedModel.fromJson(Map<String, dynamic> json) {
    return TopTradedModel(
        title: json['title'] ?? '',
        currentValue: (json['currentValue'] ?? 0).toDouble(),
        todaysValue: (json['todaysValue'] ?? 0).toDouble(),
        image: json['image'] ?? '',
        isPositive: json['isPositive'],
        todaysPercentage: json['todaysPercentage']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'currentValue': currentValue,
      'todaysValue': todaysValue,
      'image': image,
      "isPositive": isPositive,
      "todaysPercentage": todaysPercentage
    };
  }
}
