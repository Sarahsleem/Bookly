
part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;
  SimilarBooksFailure(this.errMessage);
}
class SimilarBooksSuccess extends SimilarBooksState {
  final List< BookModel>books;

  SimilarBooksSuccess(this.books);

}
class SimilarBooksLoading extends SimilarBooksState {}
