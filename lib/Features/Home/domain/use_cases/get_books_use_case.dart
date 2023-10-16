import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';
import '../repositories/home_repository.dart';

class GetBooksUseCase {
  final HomeRepository homeRepository;
  GetBooksUseCase(this.homeRepository);
  Future<Either<Failure,List<BookEntity>>> getBooks() async {
    return await homeRepository.getBooks();
  }
}
