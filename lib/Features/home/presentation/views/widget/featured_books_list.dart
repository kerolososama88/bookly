import 'package:bookly/Core/widget/custom_error_widget.dart';
import 'package:bookly/Core/widget/custom_loading_Indicator.dart';
import 'package:bookly/Features/home/presentation/manger/features_book_cubit/features_book_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/features_book_cubit/features_book_state.dart';
import 'package:bookly/Features/home/presentation/views/widget/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBookCubit, FeaturesBookState>(
      builder: (context, state) {
        if (state is FeaturesBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListViewItem(
                    imageUrl: state.books.items![index].volumeInfo!.imageLinks
                            ?.smallThumbnail ??
                        '',
                  ),
                );
              },
              itemCount: state.books.items!.length,
            ),
          );
        } else if (state is FeaturesBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
