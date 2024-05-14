import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.iconColor,
  });
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      iconSize: 24,
      color: iconColor,
      icon: Icon(icon),
      style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
        side: const BorderSide(
          color: Color(0XFFE2E2E2),
          width: 1,
        ),
      )),
    );
  }
}
