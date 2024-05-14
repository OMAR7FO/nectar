import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/feature/explore/presentation/views/widgets/custom_text_field.dart';

class ProductsViewBottomSheet extends StatelessWidget {
  const ProductsViewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFFF2F3F2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  'Add',
                  style: Styles.textStyle24,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  iconSize: 26,
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0XFFE2E2E2),
              height: 12,
            ),
            const CustomTextField(
              hintText: 'Name',
            ),
            const CustomTextField(
              hintText: 'Description',
            ),
            const CustomTextField(
              hintText: 'Price',
            ),
            const CustomTextField(
              hintText: 'Image',
              readOnly: true,
              suffixIcon: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                GoRouter.of(context).pop(context);
              },
              text: 'Add Item',
            )
          ],
        ),
      ),
    );
  }
}
