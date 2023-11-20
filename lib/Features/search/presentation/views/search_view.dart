import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => FeaturesSearchBookCubit(
    //     FeaturesSearchBookInitial(),
    //     SearchRepoImpl(
    //       ApiService(Dio()),
    //     ),
    //   )..fetchSearchBook(),
    //   child:  Scaffold(
    //     body: SafeArea(
    //       child: SearchViewBody(
    //         item: Items(),
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      body: SafeArea(
        child: SearchViewBody(
          item: Items(),
        ),
      ),
    );
  }
}
