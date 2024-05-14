import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/utils/styles.dart';

class NamedLogo extends StatelessWidget {
  const NamedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/images/name.svg'),
        const SizedBox(
          height: 4,
        ),
        Text(
          'online groceriet',
          style: Styles.textStyle14
              .copyWith(letterSpacing: 5.5, color: Colors.white),
        )
      ],
    );
  }
}
