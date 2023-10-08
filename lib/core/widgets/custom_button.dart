import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
     this.fontSize,
    this.borderRadius,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              )),
          child: Text(text,
              style: Styles.textStyle18.copyWith(
                color: textColor,
                fontWeight: FontWeight.w900,
                fontSize: fontSize,
              ))),
    );
    //We have to way to give border radius :-
    // 1- using borderRadius: BorderRadius.all(Radius.circular(10.0))
    // 2- using borderRadius: BorderRadius.circular(10.0)
    // or using shape with RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
  }
}
