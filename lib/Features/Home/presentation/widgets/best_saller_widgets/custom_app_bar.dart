import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logoImage,
            height: 18.0,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchScreen);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 22,),
          )
        ],
      ),
    );
  }
}