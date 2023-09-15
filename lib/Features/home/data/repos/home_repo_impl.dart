
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/core/core/errors/failuers.dart';
import 'package:booklyapp/core/core/utils/apiservice.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReprImpl implements HomeRepo{
  HomeReprImpl(this.apiSercive);
  final ApiSercive apiSercive;
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks()async {
    try {
      var data = await apiSercive.get(
          endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        }catch(e){
          books.add(BookModel.fromJson(item));
      }}
      return right(books);
    }
    catch (e) {

      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
  try   {
      var data = await apiSercive.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }
    catch (e) {

    if (e is DioException){
    return left(ServerFailure.fromDioError(e)) ;
    }
    return left(ServerFailure(e.toString()));
    }
  }
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async {
    try   {
      var data = await apiSercive.get(
          endpoint: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }
    catch (e) {

      if (e is DioException){
        return left(ServerFailure.fromDioError(e)) ;
      }
      return left(ServerFailure(e.toString()));
    }
  }
}