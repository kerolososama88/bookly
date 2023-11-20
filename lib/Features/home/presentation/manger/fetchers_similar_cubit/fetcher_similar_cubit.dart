import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/presentation/manger/fetchers_similar_cubit/fetcher_similar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturesSimilarCubit extends Cubit<FeaturesSimilarState> {
  FeaturesSimilarCubit(super.initialState, this.homeRepo);

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBook({required String category}) async {
    emit(FeaturesSimilarLoading());
    var result = await homeRepo.fetchSimilarBook(category: category);
    result.fold((failure) {
      emit(FeaturesSimilarFailure(failure.errorMessage));
    }, (book) {
      emit(FeaturesSimilarSuccess(book));
    });
  }
}
