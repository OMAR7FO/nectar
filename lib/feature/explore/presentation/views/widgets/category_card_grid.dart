import 'package:flutter/material.dart';
import 'package:nectar/feature/explore/data/models/category_model.dart';
import 'package:nectar/feature/explore/presentation/views/widgets/category_card.dart';

class CategoryCardsGrid extends StatelessWidget {
  const CategoryCardsGrid({
    super.key,
  });
  static List<CategoryModel> categories = [
    CategoryModel(
      categoryColor: const Color(0XFF53B175),
      categoryImage: 'assets/images/test1.png',
      categoryName: 'Fresh Fruits & Vegetable',
    ),
    CategoryModel(
      categoryColor: const Color(0XFFF8A44C),
      categoryImage: 'assets/images/test2.png',
      categoryName: 'Cooking Oil & Ghee',
    ),
    CategoryModel(
      categoryColor: const Color(0XFFF7A593),
      categoryImage: 'assets/images/test3.png',
      categoryName: 'Meat & Fish',
    ),
    CategoryModel(
      categoryColor: const Color(0XFFD3B0E0),
      categoryImage: 'assets/images/test4.png',
      categoryName: 'Bakery & Snacks',
    ),
    CategoryModel(
      categoryColor: const Color(0XFFFDE598),
      categoryImage: 'assets/images/test5.png',
      categoryName: 'Dairy & Eggs',
    ),
    CategoryModel(
      categoryColor: const Color(0XFFB7DFF5),
      categoryImage: 'assets/images/test6.png',
      categoryName: 'Beverages',
    ),
    CategoryModel(
      categoryColor: const Color(0XFF53B175),
      categoryImage: 'assets/images/test1.png',
      categoryName: 'Fresh Fruits & Vegetable',
    ),
    CategoryModel(
      categoryColor: const Color(0XFF53B175),
      categoryImage: 'assets/images/test1.png',
      categoryName: 'Fresh Fruits & Vegetable',
    ),
    CategoryModel(
      categoryColor: const Color(0XFF53B175),
      categoryImage: 'assets/images/test1.png',
      categoryName: 'Fresh Fruits & Vegetable',
    ),
    CategoryModel(
      categoryColor: const Color(0XFF53B175),
      categoryImage: 'assets/images/test1.png',
      categoryName: 'Fresh Fruits & Vegetable',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) => CategoryCard(
        categoryImage: categories[index].categoryImage,
        categoryName: categories[index].categoryName,
        backgroundColor: categories[index].categoryColor,
      ),
      itemCount: categories.length,
    );
  }
}
