import 'package:bookly/Core/widget/style.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_list_view.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.item,});
  final Items item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SearchTextField(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Search Result',
              style: Style.textStyle18.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
          ),
          //  const SliverToBoxAdapter(
          //   child: SearchListView(),
          // ),
        ],
      ),
    );
  }
}
