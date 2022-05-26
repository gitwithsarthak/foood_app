import 'dart:convert';
import 'package:fooodapp/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', 'feeds/list',
        {"limit": "18", "Start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
      "X-RapidAPI-Key": "8efaa9976dmsh21689a602991694p15488ejsn79207d9309ef",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    // ignore: no_leading_underscores_for_local_identifiers
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
