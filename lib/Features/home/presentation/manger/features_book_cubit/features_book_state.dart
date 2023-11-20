import 'package:bookly/Features/home/data/models/book_model.dart';

abstract class FeaturesBookState {}

class FeaturesBooksInitial extends FeaturesBookState{}

class FeaturesBooksLoading extends FeaturesBookState{}

class FeaturesBooksFailure extends FeaturesBookState{
  final String errorMessage;

  FeaturesBooksFailure(this.errorMessage);
}

class FeaturesBooksSuccess extends FeaturesBookState{
  final BookModel books;

  FeaturesBooksSuccess(this.books);
}
