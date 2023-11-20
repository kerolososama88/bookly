import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Core/widget/style.dart';

class BookRatting extends StatelessWidget {
  const BookRatting({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.count,
    required this.rating,
  });

  final MainAxisAlignment mainAxisAlignment;

  final num count;
  final num rating;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        SizedBox(
          width: width * .03,
        ),
        Text(
          '$rating',
          style: Style.textStyle16.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: width * .02,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '$count',
            style: Style.textStyle14.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
