import 'dart:convert';

// List<ArticelModel2> articleFromJson(String str) => List<ArticelModel2>.from(
//     json.decode(str).map((x) => ArticelModel2.fromJson(x)));

//  List<ArticelModel2> ArticelModel2FromJson(String str) => List<ArticelModel2>.from(json.decode(str).map((x) => ArticelModel2.fromJson(x)));

class ArticelModel2 {
  ArticelModel2(
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  );
  Map source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  // DateTime? publishedAt;
  String content;
}
