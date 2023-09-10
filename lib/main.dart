import 'package:booklyapp/Features/presentation/views/splashview.dart';
import 'package:booklyapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key}) ;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
  return   GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      scaffoldBackgroundColor: PrimaryColor,
    ),
home:const  splahView(),
    );
}}
