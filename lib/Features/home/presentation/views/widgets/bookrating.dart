import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/core/utils/styles.dart';

class BookRating extends StatelessWidget{
  const BookRating ({
    super.key,
    this.mainAxisAlignment=MainAxisAlignment.start, required this.rating, required this.count,
});
  final MainAxisAlignment mainAxisAlignment ;
final num rating;
final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
          const Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: Color(0xffFFDD4f),
        ),
         const SizedBox(
          width: 6.3,
        ),
           Text(
            style: Styles.text16,
            rating.toString(),
        ),
         const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            count.toString(),
            style: Styles.text14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),


      ],
    );
  }

}