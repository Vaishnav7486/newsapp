import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapi/helper/data.dart';
import 'package:newsapi/helper/news.dart';
import 'package:newsapi/models/article_model.dart';
import 'package:newsapi/models/category_model.dart';
import 'package:newsapi/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = [];
  List<ArticleModel> articles = [];

  bool _loaded = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    functionsToRunInTheInitil();
  }

  functionsToRunInTheInitil() async {
    setState(() async {
      List<ArticleModel> futureArticles = await getNews();
      // List<ArticleModel> articles = await futureArticles;
      List<ArticleModel> articles = await getNews();
    });
  }

  @override
  Widget build(BuildContext context) {
    print("this is the category length ${categories.length}");
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("News App"),
      ),
      body: _loaded
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 70,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return CategoryContainer(
                            category: categories[index].categoryName,
                          );
                        }),
                  ),
                  SizedBox(height: 20),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: articles.length,
                      itemBuilder: (context, index) => NewsTile(
                            imageUrl: articles[index].urlToImage,
                            title: articles[index].title,
                            descr: articles[index].dsecription,
                          ))
                ],
              ),
            ),
    );
  }

  Future<List<ArticleModel>> getNews() async {
    // News newsClassObject = News();
    // await newsClassObject.getnews();
    // articles = newsClassObject.articles;
    setState(() {
      _loaded = false;
    });
    return articles;
  }
}

class NewsTile extends StatelessWidget {
  const NewsTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.descr,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String descr;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red.shade50, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 30),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: NetworkImage(imageUrl))),
            height: 220,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              descr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
