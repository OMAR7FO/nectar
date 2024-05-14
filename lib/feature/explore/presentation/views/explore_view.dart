import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/feature/explore/presentation/views/widgets/explore_view_body.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Find Products',
          style: Styles.textStyle20,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: ExploreViewBody(),
      ),
    );
  }
}
