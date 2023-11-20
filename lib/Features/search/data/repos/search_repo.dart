import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, BookModel>> fetchSearchBook();
}
