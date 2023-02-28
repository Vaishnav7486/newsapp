// import 'dart:convert';

// import 'package:newsapi/models/article_model.dart';
// import 'package:http/http.dart' as http;

// class News {
//   List<ArticleModel> articles = [];
//   String baseurl =
//       "https://newsapi.org/v2/everything?q=apple&from=2023-02-26&to=2023-02-26&sortBy=popularity&apiKey=ef17c14e2825434bb3a037d061dab9b7";
//   // var client = http.Client();
//   //  we can use this method too

//   Future<void> getnews() async {
//     var url = Uri.parse(baseurl);
//     var response = await http.get(url);
//     // if we have used a client, then we would have called as client.get(url);
//     var jsonData = jsonDecode(response.body);
//     if (jsonData["status"] == 'ok') {
//       jsonData["articles"].forEach((element) {
//         if (element["urlToImage"] != null && element["description"] != null) {
//           ArticleModel articleModel = ArticleModel(
//               author: element["author"],
//               title: element["title"],
//               dsecription: element["description"],
//               content: element["content"],
//               url: element["content"],
//               urlToImage: element["urlToImage"],
//               publishedAt: element["publishedAt"]);
//           articles.add(articleModel);
//         }
//       });
//     }
//   }

//   // Future getArticles(String api) async {
//   //   var url = Uri.parse(baseurl);
//   //   var response = await http.get(url);
//   //   if (jsonData["status"] == 'ok') {
//   //     jsonData["articles"].forEach((element) {
//   //       if (element["urlToImage"] != null && element["description"] != null) {
//   //         ArticleModel articleModel = ArticleModel(
//   //             author: element["author"],
//   //             title: element["title"],
//   //             dsecription: element["description"],
//   //             content: element["content"],
//   //             url: element["content"],
//   //             urlToImage: element["urlToImage"]);
//   //       }
//   //     });
//   //   }
//   // }

// // var response = await http

// }
