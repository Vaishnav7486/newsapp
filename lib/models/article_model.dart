import 'package:flutter/material.dart';

class ArticleModel {
  String author;
  String title;
  String dsecription;
  String url;
  String urlToImage;
  String content;
  DateTime publishedAt;

  ArticleModel(
      {required this.author,
      required this.title,
      required this.dsecription,
      required this.content,
      required this.url,
      required this.urlToImage,
      required this.publishedAt});
}











///
///
///












// To parse this JSON data, do
//
//     final articleModel = articleModelFromJson(jsonString);

// import 'dart:convert';

// ArticleModel articleModelFromJson(String str) => ArticleModel.fromJson(json.decode(str));

// String articleModelToJson(ArticleModel data) => json.encode(data.toJson());

// class ArticleModel {
//     ArticleModel({
//         required this.status,
//         required this.totalResults,
//         required this.articles,
//     });

//     String status;
//     int totalResults;
//     List<Article> articles;

//     factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
//         status: json["status"],
//         totalResults: json["totalResults"],
//         articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "status": status,
//         "totalResults": totalResults,
//         "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
//     };
// }

// class Article {
//     Article({
//         required this.source,
//         required this.author,
//         required this.title,
//         required this.description,
//         required this.url,
//         required this.urlToImage,
//         required this.publishedAt,
//         required this.content,
//     });

//     Source source;
//     String author;
//     String title;
//     String description;
//     String url;
//     String urlToImage;
//     DateTime publishedAt;
//     String content;

//     factory Article.fromJson(Map<String, dynamic> json) => Article(
//         source: Source.fromJson(json["source"]),
//         author: json["author"],
//         title: json["title"],
//         description: json["description"],
//         url: json["url"],
//         urlToImage: json["urlToImage"],
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         content: json["content"],
//     );

//     Map<String, dynamic> toJson() => {
//         "source": source.toJson(),
//         "author": author,
//         "title": title,
//         "description": description,
//         "url": url,
//         "urlToImage": urlToImage,
//         "publishedAt": publishedAt.toIso8601String(),
//         "content": content,
//     };
// }

// class Source {
//     Source({
//         this.id,
//         required this.name,
//     });

//     dynamic id;
//     String name;

//     factory Source.fromJson(Map<String, dynamic> json) => Source(
//         id: json["id"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//     };
// }
