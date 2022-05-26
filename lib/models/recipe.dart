class Recipe {
  //const Recipe({Key? key}) : super(key: key);

  final String name;
  final String images;
  final double rating;
  final String totaltime;

  Recipe({
    required this.name,
    required this.images,
    required this.rating,
    required this.totaltime,
  });

  factory Recipe.fromjson(dynamic json) {
    return Recipe(
      name: json['name'] as String,
      images: json['images'][0]['hostedLargeUrl'] as String,
      rating: json['rating'] as double,
      totaltime: json['totalTime'] as String,
    );
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromjson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe { name: $name, image:$images, rating:$rating, totaltime:$totaltime}';
  }
}
