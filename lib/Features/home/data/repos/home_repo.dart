import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, BookModel>> fetchNewsetBook();

  Future<Either<Failure, BookModel>> fetchFeaturesBook();

  Future<Either<Failure, BookModel>> fetchSimilarBook(
      {required String category});
}
