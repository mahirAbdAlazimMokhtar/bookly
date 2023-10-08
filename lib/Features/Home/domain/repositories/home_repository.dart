import '../entities/book_entity.dart';

abstract class HomeRepository {
  Future<List<BookEntity>> getBooks();
  Future<List<BookEntity>> getNewsBook();
}
