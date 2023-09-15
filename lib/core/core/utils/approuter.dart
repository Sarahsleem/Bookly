import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/Features/home/presentation/views/bookdetailview.dart';
import 'package:booklyapp/Features/home/presentation/views/homeview.dart';
import 'package:booklyapp/Features/presentation/viewmodels/similar_books_cubit.dart';
import 'package:booklyapp/Features/search/presentation/views/searchview.dart';
import 'package:booklyapp/core/core/utils/servicelocater.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../Features/presentation/views/splashview.dart';

abstract class AppRouter{
  static const KHomeView='/homeView';
  static const KBookDetailsView='/bookDetailsView';
  static const KSearchView='/searchView';
   static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state)=>const splahView()
        ,),
      GoRoute(
        path: KHomeView,
        builder: (BuildContext context, GoRouterState state) =>const HomeView()
        ,),
      GoRoute(
        path: KBookDetailsView,
        builder: ( context, state) =>BlocProvider(
            create: (context)=>SimilarBooksCubit(
                getIt.get<HomeReprImpl>(),
            ),
            child: BookDetailsView(
              bookModel: state.extra as BookModel,
            ))
        ,),
      GoRoute(
        path: KSearchView,
        builder: ( context,  state) =>const SearchView()
       ,)



    ],
  );
}