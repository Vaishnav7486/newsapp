import 'package:flutter/foundation.dart';
import 'package:newsapi/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];

  categories.add(CategoryModel(categoryName: 'Business'));
  categories.add(CategoryModel(categoryName: 'Education'));
  categories.add(CategoryModel(categoryName: 'Polictics'));
  categories.add(CategoryModel(categoryName: 'International'));
  categories.add(CategoryModel(categoryName: 'Technology'));
  categories.add(CategoryModel(categoryName: 'Military'));
  categories.add(CategoryModel(categoryName: 'Others'));

  return categories;
}
