import 'package:booklyapp/core/core/utils/approuter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CAppBar extends StatelessWidget{
  const CAppBar ({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(

        top: 40,
        bottom: 25 ,
      ),
      child: Row(
        children: [
          Image.asset(AssestsData.logo,
            height: 18,

          ),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.KSearchView);
          },
              icon:const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ))
        ],
      ),
    );
  }

}