import 'dart:convert';

import 'package:yu_news/models/show_category.dart';
import 'package:http/http.dart' as http;

class ShowcategoryNews {
  List<ShowCategoryModel> category = [];
  Future<void> gatCategorynews(String newscategry) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$newscategry&apiKey=bc82390d9a774fa5b0f0b84380e0bd97";
    var response = await http.get(Uri.parse(url));

    var jsondata = jsonDecode(response.body);
    if (jsondata['status'] == 'ok') {
      jsondata['articles'].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ShowCategoryModel ShowCategorymodel = ShowCategoryModel(
            weburl: element["url"],
            description: element["description"],
            urlToImage: element["urlToImage"],
            title: element["title"],
          );
          category.add(ShowCategorymodel);
        }
      });
    }
  }
}
