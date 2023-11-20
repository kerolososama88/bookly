// import 'package:bookly/Core/widget/custom_error_widget.dart';
// import 'package:bookly/Core/widget/custom_loading_Indicator.dart';
// import 'package:bookly/Features/home/presentation/views/widget/best_seller_list-view_item.dart';
// import 'package:bookly/Features/search/presentation/manger/fetcher_search_cubit/fetcher_search_cubit.dart';
// import 'package:bookly/Features/search/presentation/manger/fetcher_search_cubit/fetcher_search_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class SearchListView extends StatelessWidget {
//   const SearchListView({super.key,});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<FeaturesSearchBookCubit,FeaturesSearchBookState>(
//       builder: (BuildContext context, state) {
//         if(state is FeaturesSearchBookSuccess) {
//           return Expanded(
//             child: ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.zero,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: BestSellerListViewItem(
//                   imageUrl: state.books.items![index].volumeInfo!.imageLinks
//                       ?.smallThumbnail ?? '',
//                   item: state.books.items![index],
//                 ),
//               );
//             },
//             itemCount: state.books.items!.length,
//         ),
//           );
//         }else if (state is FeaturesSearchBookFailure) {
//           return CustomErrorWidget(errorMessage: state.errorMessage);
//         } else {
//           return const CustomLoadingIndicator();
//         }
//       },
//     );
//   }
// }
