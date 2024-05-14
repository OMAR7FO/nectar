import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.readOnly = false,
  });
  final String hintText;
  final Icon? suffixIcon;
  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0XFFE2E2E2),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0XFFE2E2E2),
          ),
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: Styles.textStyle18.copyWith(
          color: const Color(0XFF7C7C7C),
        ),
      ),
    );
  }
}
