import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../home/data/models/book_model/book_model.dart';
import '../../home/data/repos/home_repo.dart';


part 'featuredbooks_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedbooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var result =  await homeRepo.fetchFeaturedBooks();
    result.fold((failure)
    {
      emit(FeaturedBooksFailure(failure.errMessage));
    },
          (books) {
        emit(FeaturedBooksSuccess(books));
      },);
  }
}
