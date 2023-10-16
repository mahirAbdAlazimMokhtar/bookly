import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_case/no_params_use_case.dart';
import '../entities/book_entity.dart';
import '../repositories/home_repository.dart';

class GetBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepository homeRepository;

  GetBooksUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepository.getBooks();
  }
}
