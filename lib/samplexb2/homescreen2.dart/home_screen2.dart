import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:newsapi/samplexb2/article_model2/article_model2.dart';
import 'package:newsapi/samplexb2/services2.dart/base_client2.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  bool _loaded = false;

  final String lorem_ipsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  List<ArticelModel2> article_list2 = [];

  @override
  void initState() {
    print(
        "this is the article list length at primary initialization ${article_list2.length}");
    super.initState();
    // setState(() {
    //   article_list2.add(getNews());
    // });
    article_list2 = getNews();
    print(
        "this is the article list 2 fetched for the main progeam: $article_list2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("NewsApp 2"),
        centerTitle: true,
      ),
      body: _loaded
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  // Text("Sampl content"),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: article_list2.length,
                      itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://static.files.bbci.co.uk/ws/simorgh-assets/public/news/images/metadata/poster-1024x576.png"))),
                                  height: 220,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text(
                                    lorem_ipsum,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text(
                                    lorem_ipsum,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text(
                                    article_list2[index].title,
                                    // "Show this",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ))
                ],
              ),
            ),
    );
  }

  getNews() async {
    List<ArticelModel2> article_list2 = await BaseClientNews().getArticles();

    print("this is the article length ${article_list2.length}");
    print(article_list2.runtimeType);
    return article_list2;
    // print(article_list2[0].title);
    // print(article_list2[1].title);
    // print(article_list2[1].title);
    // print(article_list2[3].title);
    // print(article_list2[4].title);
    // print(article_list2[5].title);
    // print(article_list2[6].title);
    // print(article_list2[7].title);
    // print(article_list2[8].title);
    // print(article_list2[9].title);
    // print(article_list2[0].description);
    // print(article_list2[1].description);
    // print(article_list2[1].description);
    // print(article_list2[3].description);
    // print(article_list2[4].description);
    // print(article_list2[5].description);
    // print(article_list2[6].description);
    // print(article_list2[7].description);
    // print(article_list2[8].description);
    // print(article_list2[9].description);
  }
}
