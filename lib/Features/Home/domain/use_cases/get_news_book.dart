import 'package:bookly/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/domain/repositories/home_repository.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_case/no_params_use_case.dart';
import 'package:dartz/dartz.dart';

class GetNewsBook extends UseCase<List<BookEntity>>{
  final HomeRepository homeRepository;
  GetNewsBook(this.homeRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
   return await homeRepository.getNewsBook();
  }
}