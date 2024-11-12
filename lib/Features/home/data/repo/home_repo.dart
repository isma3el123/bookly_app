import 'package:bookly_app/Features/home/data/model/book_model.dart';
import 'package:bookly_app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<BookModel>>> fetchRecentBooks();
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBooks();
}
