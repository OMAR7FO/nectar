import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';

class LandingViewBody extends StatelessWidget {
  const LandingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/landingImage.jpeg'),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/images/logo.svg'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome to our store',
                maxLines: 2,
                style: Styles.textStyle48,
                textAlign: TextAlign.center,
              ),
              Text(
                'Get your groceries in as fast as one hour',
                style: Styles.textStyle16
                    .copyWith(color: const Color(0XFFFCFCFC).withOpacity(.7)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {
                  GoRouter.of(context).push(
                    AppRouter.kBottomNavigationBar,
                  );
                },
                text: 'Get Started',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
