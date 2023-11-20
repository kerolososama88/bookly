import 'package:flutter/cupertino.dart';

import '../../constants.dart';

abstract class Style{

  static const textStyle18 = TextStyle(
    decoration: TextDecoration.none,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static const textStyle20 = TextStyle(
    decoration: TextDecoration.none,
    fontWeight: FontWeight.normal,
    fontSize: 20,
    fontFamily:kGtSectraFine,
  );
  static const textStyle30 = TextStyle(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.normal,
      fontSize: 30,
    fontFamily:kGtSectraFine,
  );

  static const textStyle14 = TextStyle(

      decoration: TextDecoration.none,
      fontWeight: FontWeight.normal,
      fontSize: 14,
  );
  static const textStyle16 = TextStyle(
    decoration: TextDecoration.none,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
}