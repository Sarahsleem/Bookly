
import 'package:booklyapp/core/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/customappbar.dart';

import 'bestsellerlistviiew.dart';

import 'featuredlistview.dart';

class HomeViewBody extends StatelessWidget{
  const HomeViewBody({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  CustomScrollView(
      physics:  BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CAppBar(),
              ),
              FeatureBooksListView(),
               SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  ' Newest Books ',
                  style: Styles.text18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
             // BestSellerListView(),
            ],
          ) ,
        ),
         SliverFillRemaining(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}





