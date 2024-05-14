import 'package:flutter/material.dart';
import 'package:nectar/constant.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.withPrice = false,
    this.backgroundColor = kPrimaryColor,
    this.textColor = const Color(0XFFFFF9FF),
  });
  final void Function()? onPressed;
  final String text;
  final bool withPrice;
  final Color backgroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 353,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
            ),
            backgroundColor: backgroundColor,
          ),
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: Styles.textStyle18.copyWith(
                    color: textColor,
                  ),
                ),
              ),
              withPrice
                  ? Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22.0),
                        child: Container(
                          color: const Color(0XFF489E67),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            child: Text(
                              '\$12.96',
                              style: Styles.textStyle12.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          )),
    );
  }
}
