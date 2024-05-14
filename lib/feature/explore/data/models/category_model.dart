import 'package:flutter/material.dart';

class CategoryModel {
  String categoryName;
  String categoryImage;
  Color categoryColor;
  CategoryModel(
      {required this.categoryColor,
      required this.categoryImage,
      required this.categoryName});
}
