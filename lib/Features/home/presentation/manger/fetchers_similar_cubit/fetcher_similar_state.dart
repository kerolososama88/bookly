import 'package:bookly/Features/home/data/models/book_model.dart';

abstract class FeaturesSimilarState {}

class FeaturesSimilarInitial extends FeaturesSimilarState{}

class FeaturesSimilarLoading extends FeaturesSimilarState{}

class FeaturesSimilarFailure extends FeaturesSimilarState{
  final String errorMessage;

  FeaturesSimilarFailure(this.errorMessage);
}

class FeaturesSimilarSuccess extends FeaturesSimilarState{
  final BookModel books;

  FeaturesSimilarSuccess(this.books);

}
