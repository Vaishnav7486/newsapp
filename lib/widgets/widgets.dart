import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapi/models/category_model.dart';

// class NewsCategory extends StatelessWidget {
//   const NewsCategory({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 70,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           // physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: 10,
//           itemBuilder: (context, index) {
//             return CategoryContainer(
//               category: 'Category name',
//             );
//           }),
//     );
//   }
// }

class CategoryContainer extends StatelessWidget {
  const  CategoryContainer({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue.shade50, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(right: 10),
      width: 120,
      height: 70,
      child: Center(
          child: Text(
        "$category",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w500),
      )),
    );
  }
}
