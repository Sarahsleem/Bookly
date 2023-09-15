part of 'newestbooks_cubit.dart';

class NewestbooksState extends Equatable {
const NewestbooksState();



  @override
  List<Object?> get props => [

      ];


  }
class NewsetBooksInitial extends NewestbooksState{}
class NewsetBooksLoading extends NewestbooksState{

}
class NewsetBooksSuccess extends NewestbooksState{
  final List<BookModel> books;
   const NewsetBooksSuccess(this.books);
}
class NewsetBooksFailure extends NewestbooksState{
  final String errMessage;
  const NewsetBooksFailure(this.errMessage);
}

