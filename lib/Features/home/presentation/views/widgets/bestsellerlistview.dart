import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/core/utils/approuter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/core/utils/assets.dart';
import '../../../../../core/core/utils/styles.dart';
import 'bookrating.dart';
import 'customlistview.dart';




class BestSellerListViewIt extends StatelessWidget{
  const BestSellerListViewIt ({Key?key, required this.bookModel}):super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector (
      onTap: (){

        GoRouter.of(context).push(
          AppRouter.KBookDetailsView,
        extra: bookModel,
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [CListViewItem(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',
          ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.5,
                    child:  Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.text20.copyWith(fontFamily: KGtSectraFine),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.text14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                       'Free💸',
                        style: Styles.text20.copyWith(fontWeight: FontWeight.bold),
                      ),
                   Spacer(),

                      BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                      count: bookModel.volumeInfo.ratingsCount?? 0,),
                    ],
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    ) ;
  }
}
