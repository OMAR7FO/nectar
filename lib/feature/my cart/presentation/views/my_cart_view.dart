import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/feature/my%20cart/presentation/views/widgets/my_cart_bottom_sheet.dart';
import 'package:nectar/feature/my%20cart/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: Styles.textStyle20
              .copyWith(fontFamily: 'Gilory', fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: CustomButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => const MyCartBottomSheet());
        },
        text: 'Go to Checkout',
        withPrice: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: MyCartViewBody(),
      ),
    );
  }
}
