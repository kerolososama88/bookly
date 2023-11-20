// import 'package:bookly/Features/search/data/repos/search_repo.dart';
// import 'package:bookly/Features/search/presentation/manger/fetcher_search_cubit/fetcher_search_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class FeaturesSearchBookCubit extends Cubit<FeaturesSearchBookState> {
//   FeaturesSearchBookCubit(
//     super.initialState,
//     this.searchRepo,
//   );
//
//   final SearchRepo searchRepo;
//
//   Future<void> fetchSearchBook() async {
//     emit(FeaturesSearchBookLoading());
//     var result = await SearchRepo.fetchSearchBook();
//     result.fold((failure) {
//       emit(FeaturesSearchBookFailure(failure.errorMessage));
//     }, (book) {
//       emit(FeaturesSearchBookSuccess(book));
//     });
//   }
// }
