import 'package:bookly/Features/splash/presentation/widgets/sliding_text.dart';
import 'package:bookly/core/utils/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../core/utils/app_router.dart';


class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logoImage),
        const SizedBox(
          height: 20,
        ),
        SlidingText(slideAnimation: _slideAnimation),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // context.go('/homeScreen');
      GoRouter.of(context).push(AppRouter.homeScreen);
    });
  }

  void initSlidingAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: const Offset(0, 0))
            .animate(_animationController);

    _animationController.forward();
  }
}
