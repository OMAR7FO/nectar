import 'package:flutter/material.dart';
import 'package:nectar/feature/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFF53B175),
      body: SplashViewBody(),
    );
  }
}
