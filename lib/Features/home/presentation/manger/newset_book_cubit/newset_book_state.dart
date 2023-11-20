import 'package:bookly/Features/home/data/models/book_model.dart';

abstract class NewsetBookState {}

class NewsetBookInitial extends NewsetBookState {}

class NewsetBookLoading extends NewsetBookState {}

class NewsetBookFailure extends NewsetBookState {
  final String errorMessage;

  NewsetBookFailure(this.errorMessage);
}

class NewsetBookSuccess extends NewsetBookState {
  final BookModel book;

  NewsetBookSuccess(this.book);
}
