import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';
abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchNewsBooks();
 Future<Either<Failure,List<BookModel>>>  fetchFeaturedBooks();
 Future<Either<Failure,List<BookModel>>>  fetchSimilarBooks( {required String category});
}
