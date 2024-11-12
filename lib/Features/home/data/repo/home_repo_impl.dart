import 'package:bookly_app/Features/home/data/model/book_model.dart';

import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failuers, List<BookModel>>> fetchRecentBooks() async {
    try {
      var data = await apiService.get(endPoint: 'recent');
      List<BookModel> books = [];
      for (var items in data['books']) {
        books.add(BookModel.fromJson(items));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDirError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
