
import 'package:booklyapp/Features/search/presentation/views/widgets/searchviewbody.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget{
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
   return const  Scaffold(
     body:SafeArea(child:SearchViewBody()),
   );
  }

}