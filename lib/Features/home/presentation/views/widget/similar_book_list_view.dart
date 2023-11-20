import 'package:bookly/Core/widget/custom_error_widget.dart';
import 'package:bookly/Core/widget/custom_loading_Indicator.dart';
import 'package:bookly/Features/home/presentation/manger/fetchers_similar_cubit/fetcher_similar_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/fetchers_similar_cubit/fetcher_similar_state.dart';
import 'package:bookly/Features/home/presentation/views/widget/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesSimilarCubit, FeaturesSimilarState>(
      builder: (context, state) {
        if(state is FeaturesSimilarSuccess) {
          return SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * .15,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ListViewItem(
                  imageUrl: state.books.items![index].volumeInfo!.imageLinks
                      ?.smallThumbnail ?? '',
                ),
              );
            },
            itemCount: state.books.items!.length,
          ),
        );
        }else if (state is FeaturesSimilarFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
