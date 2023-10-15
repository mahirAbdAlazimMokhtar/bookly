import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure,List<BookEntity>>> getBooks();
  Future<Either<Failure,List<BookEntity>>> getNewsBook();
}
