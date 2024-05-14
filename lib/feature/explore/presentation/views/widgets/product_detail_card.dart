import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/feature/explore/data/models/product_detail_model.dart';
import 'package:nectar/feature/explore/presentation/views/widgets/add_button.dart';

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({
    super.key,
    required this.product,
  });
  final ProductDetailModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0XFFE2E2E2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 90,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(product.productImage),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              product.productName,
              maxLines: 2,
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              product.productDetail,
              style: Styles.textStyle14,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  '\$${product.price}',
                  style: Styles.textStyle18,
                ),
                const Spacer(),
                AddButton(
                  onPressed: () {},
                  iconSize: 28,
                  size: 45,
                  radius: 17,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
