import 'package:bookly/Core/widget/custom_error_widget.dart';
import 'package:bookly/Core/widget/custom_loading_Indicator.dart';
import 'package:bookly/Features/home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/newset_book_cubit/newset_book_state.dart';
import 'package:bookly/Features/home/presentation/views/widget/best_seller_list-view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccess) {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItem(
                    imageUrl: state.book.items![index].volumeInfo!.imageLinks
                            ?.smallThumbnail ?? '',
                    item: state.book.items![index],
                  ),
                );
              },
              itemCount: state.book.items!.length,
            ),
          );
        } else if (state is NewsetBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
