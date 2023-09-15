 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/bestsellerlistview.dart';
import 'customsearchtextview.dart';

class SearchViewBody extends StatelessWidget{
  const SearchViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
  return const  Padding(
    padding:  EdgeInsets.symmetric(horizontal: 30.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(),
         SizedBox(
          height: 16,
        ),
        Text(
          'Search Result🔎',
          style: Styles.text18,
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SearchResultListView()),
      ],

    ),
  );
  }

}

class SearchResultListView extends StatelessWidget{
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
  return ListView.builder(
    padding: EdgeInsets.zero,
    itemCount: 10,
    itemBuilder:(context,index){
      return   Padding(
        padding:  EdgeInsets.symmetric(vertical: 10),
       // child:   BestSellerListViewIt(bookModel: ,),
      );

    },

  ) ;
  }

}