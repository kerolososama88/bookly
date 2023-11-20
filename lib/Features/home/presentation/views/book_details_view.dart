import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/home/presentation/manger/fetchers_similar_cubit/fetcher_similar_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({
    super.key,
    required this.items,
  });

  final Items items;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FeaturesSimilarCubit>(context).fetchSimilarBook(
      category: widget.items.volumeInfo!.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody(
        items: widget.items,
      )),
    );
  }
}
