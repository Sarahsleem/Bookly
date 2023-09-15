import 'package:booklyapp/Features/presentation/viewmodels/featuredbooks_cubit.dart';
import 'package:booklyapp/core/core/widgets/customerrorwidget.dart';
import 'package:booklyapp/core/core/widgets/customloadingindicator.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/core/utils/approuter.dart';
import 'customlistview.dart';
class FeatureBooksListView extends StatelessWidget{
  const FeatureBooksListView ({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbooksCubit, FeaturedBooksState>(
  builder: (context, state) {
    if (state is FeaturedBooksSuccess) {
      return SizedBox(
        height: MediaQuery.of(context).size.height*.3,

        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder:( context,index){
              return Padding(
                padding:const EdgeInsets.symmetric(horizontal: 8),
                child:  GestureDetector(
                  onTap: (){

                    GoRouter.of(context).push(
                      AppRouter.KBookDetailsView,
                      extra: state.books[index],
                    );

                  },
                  child: CListViewItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',
                  ),
                ),
              );
            }
        ),
      );
    }
    else if(state is FeaturedBooksFailure){
return CustomErrorWidget(errMessage: state.errMessage);
    }else {
       return const CustomLoadingIndicator();
    }
  },
);
  }
}
