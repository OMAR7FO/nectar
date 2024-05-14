import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.backgroundColor,
    required this.categoryImage,
    required this.categoryName,
  });
  final Color backgroundColor;
  final String categoryName;
  final String categoryImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kProductsView);
      },
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: backgroundColor.withOpacity(.7),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 2 / 1,
              child: Image.asset(categoryImage),
            ),
            SizedBox(
              width: 100,
              child: Text(
                categoryName,
                style: Styles.textStyle16,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
