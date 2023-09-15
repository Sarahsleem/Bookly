import 'package:booklyapp/Features/home/presentation/views/widgets/similarbookssection.dart';
import 'package:flutter/material.dart';
import '../../../data/models/book_model/book_model.dart';
import 'booksdetailssection.dart';
import 'custombookdetailappbar.dart';


class  BookDetailsViewBody extends StatelessWidget{
  const BookDetailsViewBody ({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CBookDetailAppBar(),

                 BookDetailsSection(
                   book: bookModel,
                 ) ,

                 Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
             SimilarBooksSection(),
                 SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

  
  

