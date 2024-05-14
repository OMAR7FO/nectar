import 'package:flutter/material.dart';
import 'package:nectar/feature/my%20cart/data/models/my_cart_product_model.dart';
import 'package:nectar/feature/my%20cart/presentation/views/widgets/my_cart_product_card.dart';

class MyCartProductsList extends StatelessWidget {
  const MyCartProductsList({
    super.key,
  });
  static List<MyCartProductModel> products = [
    MyCartProductModel(
        productDetails: '1kg, Price',
        productImage: 'assets/images/myCart1.png',
        productName: 'Bell Pepper Red',
        productPrice: '4.99'),
    MyCartProductModel(
        productDetails: '4pc, Price',
        productImage: 'assets/images/myCart2.png',
        productName: 'Egg Chicken Red',
        productPrice: '1.99'),
    MyCartProductModel(
        productDetails: '12kg, Price',
        productImage: 'assets/images/myCart3.png',
        productName: 'Organic Bananas',
        productPrice: '3.00'),
    MyCartProductModel(
        productDetails: '250gm, Price',
        productImage: 'assets/images/myCart4.png',
        productName: 'Ginger',
        productPrice: '2.99'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => MyCartProductCard(
        product: products[index],
      ),
      separatorBuilder: (context, index) => const Divider(
        height: 25,
        color: Color(0XFFE2E2E2),
      ),
      itemCount: products.length,
    );
  }
}
