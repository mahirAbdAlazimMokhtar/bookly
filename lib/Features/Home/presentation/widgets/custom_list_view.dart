import 'package:flutter/material.dart';

import '../../../../core/utils/assets/assets.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: const DecorationImage(
              image: AssetImage(AssetsData.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
