
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/core/utils/styles.dart';
import 'bookaction.dart';
import 'bookrating.dart';
import 'customlistview.dart';

class BookDetailsSection extends StatelessWidget{
  const BookDetailsSection({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.2),
          child: CListViewItem(imageUrl: book.volumeInfo.imageLinks?.thumbnail??'',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
         book.volumeInfo.title!,
          style: Styles.text30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors?[0]??'',
            style: Styles.text18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,

            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(mainAxisAlignment: MainAxisAlignment.center,
        rating: book.volumeInfo.averageRating ?? 0,
        count:book.volumeInfo.ratingsCount ?? 0,) ,
        const SizedBox(
          height: 38,
        ),
       BooksActon(
bookModel: book,
        ),

      ],
    );
  }
}