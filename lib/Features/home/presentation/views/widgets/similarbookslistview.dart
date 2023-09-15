import 'package:booklyapp/Features/presentation/viewmodels/similar_books_cubit.dart';
import 'package:booklyapp/core/core/widgets/customerrorwidget.dart';
import 'package:booklyapp/core/core/widgets/customloadingindicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customlistview.dart';

class SimilarBookListView extends StatelessWidget{
  const SimilarBookListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if (state is SimilarBooksSuccess) {
      return SizedBox(
        height: MediaQuery.of(context).size.height*.15,
        child: ListView.builder(
          itemCount:state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder:( context,index){
              return  Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 5),
                child:  CListViewItem(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',

                ),
              );
            }
        ),
      );
    }else if (state is SimilarBooksFailure){
      return CustomErrorWidget(errMessage: state.errMessage);
    }else {
      return  CustomLoadingIndicator();
    }
  },
);
  }

}