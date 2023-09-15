import 'package:booklyapp/Features/home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/Features/presentation/viewmodels/featuredbooks_cubit.dart';
import 'package:booklyapp/Features/presentation/views/splashview.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/core/utils/apiservice.dart';
import 'package:booklyapp/core/core/utils/approuter.dart';
import 'package:booklyapp/core/core/utils/servicelocater.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

import 'Features/presentation/viewmodels/newestbooks/newestbooks_cubit.dart';


void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key}) ;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
  return   MultiBlocProvider(
    providers: [
      BlocProvider(create: (context)=>FeaturedbooksCubit(getIt.get<HomeReprImpl>(),
      )..fetchFeaturedBooks(),
      ),

      BlocProvider(create: (context)=>NewestbooksCubit(getIt.get<HomeReprImpl>(),
    )..fetchNewsetBooks()
    )
    ],
    child: MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: PrimaryColor,
        textTheme: GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme),
      ),

      ),
  );
}}


