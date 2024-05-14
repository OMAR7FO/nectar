import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/feature/my%20cart/presentation/views/widgets/check_out_button.dart';

class MyCartBottomSheet extends StatelessWidget {
  const MyCartBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Checkout',
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
            height: 12,
          ),
          const CheckOutButton(
            text1: 'Delivery',
            text2: 'Select Method',
          ),
          const Divider(
            height: 12,
          ),
          const CheckOutButton(
            text1: 'Payment',
            image: 'assets/images/visa.svg',
          ),
          const Divider(
            height: 12,
          ),
          const CheckOutButton(
            text1: 'Promo Code',
            text2: 'Pick discount',
          ),
          const Divider(
            height: 12,
          ),
          const CheckOutButton(
            text1: 'Toatl Cost',
            text2: '\$13.97',
          ),
          const Divider(
            height: 12,
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              style: Styles.textStyle14,
              children: [
                const TextSpan(text: 'By placing an order you agree to our '),
                TextSpan(
                  text: 'Terms ',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(text: 'And '),
                TextSpan(
                  text: 'Conditions',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSuccessfulView);
            },
            text: 'Place Order',
          )
        ],
      ),
    );
  }
}
