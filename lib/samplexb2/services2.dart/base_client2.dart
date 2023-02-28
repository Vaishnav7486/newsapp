import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapi/models/article_model.dart';
import 'package:newsapi/samplexb2/article_model2/article_model2.dart';

class BaseClientNews {
  List<ArticelModel2> article_list2 = [];

  Future<List<ArticelModel2>> getArticles() async {
    String baseUrl2 =
        "https://newsapi.org/v2/everything?q=apple&from=2023-02-26&to=2023-02-26&sortBy=popularity&apiKey=ef17c14e2825434bb3a037d061dab9b7";
    Uri url = Uri.parse(baseUrl2);
    var response = await http.get(url);
    var jsonData = await json.decode(response.body);
    if (response.body != null) {
      print("was able to fetch things");

      // print("this is the data obtaied as json data $jsonData");
      if (jsonData["status"] == "ok") {
        print("this is the json data status " + jsonData["status"]);
        jsonData["articles"].forEach((element) {
          if (element["source"] != null &&
              element["author"] != null &&
              element["title"] != null &&
              element["description"] != null &&
              element["url"] != null &&
              element["urlToImage"] != null &&
              element["publishedAt"] != null &&
              element["content"] != null) {
            try {
              article_list2.add(ArticelModel2(
                  element["source"],
                  element["author"],
                  element["title"],
                  element["description"],
                  element["url"],
                  element["urlToImage"],
                  // element["publishedAt"] as DateTime,
                  element["publishedAt"],
                  element["content"]));
            } catch (e) {
              print("EXCEPTION CAUGHT ON ADDING ITEM TO LIST $e");
            }
          }
        });
      }
      // print("THIS IS THE CONTENTS IN THE ARTICLE LIST $article_list2");
    } else {
      print("Couldn't fetch things");
    }
    return article_list2;
  }

  // var client2 = http.Client();

  // Future getNews() async {
  //   var url = Uri.parse(baseUrl2);

  //   var response = await client2.get(url);
  //   if (response.statusCode == 200) {
  //     return articleModelFromJson(response.body);
  //   } else {
  //     // catch exception in the ui
  //   }
  // }

}
