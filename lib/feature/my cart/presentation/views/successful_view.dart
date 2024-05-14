import 'package:flutter/material.dart';
import 'package:nectar/feature/my%20cart/presentation/views/widgets/successful_view_body.dart';

class SuccessfulView extends StatelessWidget {
  const SuccessfulView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: SuccessfulViewBody(),
      ),
    );
  }
}
