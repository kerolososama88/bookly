import 'package:bookly/Features/home/data/models/book_model.dart';

abstract class FeaturesSearchBookState {}

class FeaturesSearchBookInitial extends FeaturesSearchBookState{}

class FeaturesSearchBookLoading extends FeaturesSearchBookState{}

class FeaturesSearchBookFailure extends FeaturesSearchBookState{
  final String errorMessage;

  FeaturesSearchBookFailure(this.errorMessage);

}

class FeaturesSearchBookSuccess extends FeaturesSearchBookState{
  final BookModel books;

  FeaturesSearchBookSuccess(this.books);

}
