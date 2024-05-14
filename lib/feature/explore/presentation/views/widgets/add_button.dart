import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.iconSize,
    required this.size,
    required this.radius,
    required this.onPressed,
  });
  final double size;
  final double iconSize;
  final double radius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: iconSize,
        ),
      ),
    );
  }
}
