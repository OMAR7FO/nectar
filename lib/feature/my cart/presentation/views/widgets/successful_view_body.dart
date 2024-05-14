import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';

class SuccessfulViewBody extends StatelessWidget {
  const SuccessfulViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset('assets/images/successful.svg'),
        const SizedBox(
          height: 65,
        ),
        const Text(
          'Your Order has been accepted',
          style: Styles.textStyle28,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Your items has been placcd and is on it’s way to being processed',
            style: Styles.textStyle16.copyWith(color: const Color(0XFF7C7C7C)),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .13,
        ),
        CustomButton(
          onPressed: () {},
          text: 'Track Order',
        ),
        CustomButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          text: 'Back to home',
          backgroundColor: Colors.white,
          textColor: Colors.black,
        ),
      ],
    );
  }
}
