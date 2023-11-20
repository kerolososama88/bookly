import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/presentation/manger/features_book_cubit/features_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturesBookCubit extends Cubit<FeaturesBookState> {
  FeaturesBookCubit(super.initialState, this.homeRepo);

  final HomeRepo homeRepo;

  Future<void> fetchFeaturesBook() async {
    emit(FeaturesBooksLoading());
    var result = await homeRepo.fetchFeaturesBook();
    result.fold((failure) {
      emit(FeaturesBooksFailure(failure.errorMessage));
    }, (book) {
      emit(FeaturesBooksSuccess(book));
    });
  }
}
