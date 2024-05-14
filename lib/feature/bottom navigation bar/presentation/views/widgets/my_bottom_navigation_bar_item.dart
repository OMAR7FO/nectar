import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/utils/styles.dart';

class MyBottomNavigationBarItem extends StatelessWidget {
  const MyBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });
  final String icon;
  final String label;
  final void Function()? onPressed;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: isSelected ? kPrimaryColor : Colors.black,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: Styles.textStyle12.copyWith(
              color: isSelected ? kPrimaryColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
