
import 'package:booklyapp/Features/home/presentation/views/widgets/similarbookslistview.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget{
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'You can also like 💖',
            style: Styles.text14.copyWith(
              fontWeight: FontWeight.w600,)
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBookListView(),

      ],

    );
  }

}