import 'package:bookly/Core/widget/style.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widget/book_action.dart';
import 'package:bookly/Features/home/presentation/views/widget/book_ratting.dart';
import 'package:bookly/Features/home/presentation/views/widget/list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  final Items items;

  const BookDetailsSection({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: ListViewItem(
            imageUrl: items.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(
          height: height * .05,
        ),
        Text(
          items.volumeInfo?.title??'',
          style: Style.textStyle30.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: height * .01,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            items.volumeInfo?.authors![0] ??'',
            style: Style.textStyle18.copyWith(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
         BookRatting(
          mainAxisAlignment: MainAxisAlignment.center,
          count: items.volumeInfo?.averageRating??0,
          rating: items.volumeInfo?.ratingsCount??0,
        ),
        SizedBox(
          height: height * .03,
        ),
         BookAction(
           items: items,
         ),
      ],
    );
  }
}
