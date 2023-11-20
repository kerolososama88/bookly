import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widget/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:bookly/Features/home/presentation/views/widget/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final Items items;

  const BookDetailsViewBody({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomAppBarDetails(),
                BookDetailsSection(
                  items: items,
                ),
                Expanded(
                  child: SizedBox(
                    height: height * .06,
                  ),
                ),
                const SimilarBookSection(),
                SizedBox(
                  height: height * .04,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
