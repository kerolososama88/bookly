import 'package:bookly/Core/widget/style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
   const CustomErrorWidget({super.key, required this.errorMessage});
final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
      style: Style.textStyle18.copyWith(
        color: Colors.white,
      ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
