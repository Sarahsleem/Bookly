import 'package:booklyapp/core/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
class splashViewBody extends StatelessWidget{
  const splashViewBody({super.key});
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
           Image.asset(AssestsData.logo),
    ] );
  }
}