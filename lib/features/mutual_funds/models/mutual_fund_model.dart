class MutualFundModel {
  final String title;
  final String subTitle;
  final double currentPercentage;
  final String year;
  final String image;
  int? rating;

  MutualFundModel(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.year,
      required this.currentPercentage,
      this.rating});

  factory MutualFundModel.fromJson(Map<String, dynamic> json) {
    return MutualFundModel(
        title: json['title'] ?? '',
        subTitle: json["subTitle"],
        currentPercentage: (json['currentPercentage'] ?? 0).toDouble(),
        year: (json['year'] ?? 0).toDouble(),
        image: json['image'] ?? '',
        rating: json["rating"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      "subTitle": subTitle,
      'currentPercentage': currentPercentage,
      'year': year,
      'image': image,
      "rating": rating
    };
  }
}
