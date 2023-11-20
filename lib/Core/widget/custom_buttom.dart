import 'dart:ffi';

import 'package:bookly/Core/widget/style.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.onPressed,
  });

  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .05,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: Style.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
