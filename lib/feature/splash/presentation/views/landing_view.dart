import 'package:flutter/material.dart';
import 'package:nectar/feature/splash/presentation/views/widgets/landing_view_body.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LandingViewBody(),
    );
  }
}
