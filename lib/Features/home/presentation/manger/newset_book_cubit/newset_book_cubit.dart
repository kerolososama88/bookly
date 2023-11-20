import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/presentation/manger/newset_book_cubit/newset_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBookCubit extends Cubit<NewsetBookState>{
  NewsetBookCubit(super.initialState, this.homeRepo);

  final HomeRepo homeRepo;
  Future<void> fetchNewsetBook()async {
    emit(NewsetBookLoading());
    var result = await homeRepo.fetchNewsetBook();
    result.fold((failure) {
      emit(NewsetBookFailure(failure.errorMessage));
    }
        , (book) {
          emit(NewsetBookSuccess(book));
        });
  }
}

