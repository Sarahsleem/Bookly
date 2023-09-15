
//import 'package:flutter/cupertino.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/core/widgets/custombutton.dart';

class BooksActon extends StatelessWidget{
  const BooksActon ({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
         const  Expanded(
              child: CButton(

                textbutton: 'Free',
                textcolor: Colors.black,
                background: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              )
          ),
          Expanded(
              child: CButton(
                onPressed: () async {
                  Uri uri= Uri.parse(bookModel.volumeInfo.previewLink!);
                  if (!await launchUrl(uri)) {
                  throw Exception('Could not launch $uri');
                  }

                },
                fontsize: 16,
                textbutton: getText(bookModel),
                textcolor: Colors.white,
                background:  const Color(0xffEF8262),
                borderRadius:const  BorderRadius.only(topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              )
          ),
        ],
      ),
    );
  }

   String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink==null){
      return 'Not Available';
    }else{
      return 'Preview';
    }

  }
}