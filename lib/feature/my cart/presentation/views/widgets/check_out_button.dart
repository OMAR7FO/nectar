import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/utils/styles.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({
    super.key,
    required this.text1,
    this.text2 = 'default',
    this.icon,
    this.image,
  });
  final String text1;
  final String text2;
  final IconData? icon;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            text1,
            style: Styles.textStyle18.copyWith(
              color: const Color(0XFF7C7C7C),
            ),
          ),
          const Spacer(),
          image != null
              ? SvgPicture.asset(image!)
              : Text(
                  text2,
                  style: Styles.textStyle14.copyWith(
                    color: Colors.black,
                  ),
                ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ],
      ),
    );
  }
}
