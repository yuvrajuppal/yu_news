import 'dart:convert';

import 'package:yu_news/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticalModel> news = [];
  Future<void> getnews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=bc82390d9a774fa5b0f0b84380e0bd97";
    var response = await http.get(Uri.parse(url));

    var jsondata = jsonDecode(response.body);

    if (jsondata['status'] == 'ok') {
      jsondata["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticalModel articalmodel = ArticalModel(
            description: element["description"],
            urlToImage: element["urlToImage"],
            title: element["title"],
            weburl: element["url"],
          );
          news.add(articalmodel);
        }
      });
    }
  }
}
