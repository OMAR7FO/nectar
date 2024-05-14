import 'package:flutter/material.dart';
import 'package:nectar/feature/explore/data/models/product_detail_model.dart';
import 'package:nectar/feature/explore/presentation/views/widgets/product_detail_card.dart';

class ProductDetailGrid extends StatelessWidget {
  const ProductDetailGrid({
    super.key,
  });
  static List<ProductDetailModel> products = [
    ProductDetailModel(
        price: '1.99',
        productDetail: '355ml, Price',
        productImage: 'assets/images/cola1.png',
        productName: 'Diet Coke'),
    ProductDetailModel(
        price: '1.50',
        productDetail: '325ml, Price',
        productImage: 'assets/images/cola2.png',
        productName: 'Sprite Can'),
    ProductDetailModel(
        price: '5.99',
        productDetail: '2L, Price',
        productImage: 'assets/images/cola3.png',
        productName: 'Apple & Grape Juice'),
    ProductDetailModel(
        price: '8.99',
        productDetail: '2L, Price',
        productImage: 'assets/images/cola4.png',
        productName: 'Orange Juice'),
    ProductDetailModel(
        price: '4.99',
        productDetail: '325ml, Price',
        productImage: 'assets/images/cola5.png',
        productName: 'Coca Cola Can'),
    ProductDetailModel(
        price: '4.99',
        productDetail: '330ml, Price',
        productImage: 'assets/images/cola6.png',
        productName: 'Pepsi Can'),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        mainAxisExtent: 264,
      ),
      itemBuilder: (context, index) => ProductDetailCard(
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
