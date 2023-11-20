import 'package:bookly/Core/widget/style.dart';
import 'package:bookly/Features/home/presentation/views/widget/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Style.textStyle16.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(
          height: height *.03,
        ),
         const SimilarBookListView(),
      ],
    );
  }
}
