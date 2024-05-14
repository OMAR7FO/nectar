import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/feature/explore/presentation/views/widgets/add_button.dart';
import 'package:nectar/feature/explore/presentation/views/widgets/products_view_body.dart';
import 'package:nectar/feature/explore/presentation/views/widgets/products_view_bottom_sheet.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: ProductsViewBody(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: const Text(
        'Beverages',
        style: Styles.textStyle20,
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 19),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 19),
          child: AddButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => const ProductsViewBottomSheet());
            },
            iconSize: 20,
            size: 30,
            radius: 8,
          ),
        ),
      ],
    );
  }
}
