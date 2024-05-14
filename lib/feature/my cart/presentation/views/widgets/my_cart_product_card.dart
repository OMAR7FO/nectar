import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/feature/my%20cart/data/models/my_cart_product_model.dart';
import 'package:nectar/feature/my%20cart/presentation/views/widgets/custom_icon_button.dart';

class MyCartProductCard extends StatelessWidget {
  const MyCartProductCard({super.key, required this.product});
  final MyCartProductModel product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: .7 / 1,
            child: Image.asset(product.productImage),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilory',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  product.productDetails,
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    const CustomIconButton(
                      icon: Icons.remove,
                      iconColor: Color(0XFFB3B3B3),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Text(
                      '1',
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    const CustomIconButton(
                      icon: Icons.add,
                      iconColor: kPrimaryColor,
                    ),
                    const Spacer(),
                    Text(
                      '\$${product.productPrice}',
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Gilory',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
