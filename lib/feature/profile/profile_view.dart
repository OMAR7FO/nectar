import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Profile',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
