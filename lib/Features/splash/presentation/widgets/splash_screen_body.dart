import 'package:bookly/core/utils/assets/assets.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logoImage),
        const SizedBox(height: 20,),
        const Text ('Read Free Books',textAlign: TextAlign.center,),
      ],
    );
  }
}
