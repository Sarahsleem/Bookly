import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';

import '../../../home/data/models/book_model/book_model.dart';
import '../../../home/data/repos/home_repo.dart';


part 'newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestbooksState> {


  NewestbooksCubit(this.homeRepo) : super(const NewestbooksState());
  final HomeRepo homeRepo;
  Future<void> fetchNewsetBooks()async{
    emit(NewsetBooksLoading());
    var result =  await homeRepo.fetchNewsBooks();
    result.fold((failure)
    {
      emit(NewsetBooksFailure(failure.errMessage));
    },
          (books) {
        emit(NewsetBooksSuccess(books));
      },);
  }

  }
