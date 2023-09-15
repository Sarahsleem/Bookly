import 'package:booklyapp/Features/presentation/viewmodels/newestbooks/newestbooks_cubit.dart';
import 'package:booklyapp/core/core/widgets/customerrorwidget.dart';
import 'package:booklyapp/core/core/widgets/customloadingindicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bestsellerlistview.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key?key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbooksCubit, NewestbooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewIt(
                  bookModel:state.books[index],),
              );
            },

          );
        }
        else if(state is NewsetBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return CustomLoadingIndicator();
        }
      },
    );
  }
}