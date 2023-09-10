import 'package:booklyapp/Features/presentation/views/widgets/splashViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class splahView extends StatelessWidget{
  const splahView({super.key}) ;
  @override
  Widget build(BuildContext context){
    return const  Scaffold(

      body:splashViewBody(),
    );
  }
}