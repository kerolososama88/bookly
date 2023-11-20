import 'package:bookly/Core/utils/api_servic.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/fetchers_similar_cubit/fetcher_similar_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/fetchers_similar_cubit/fetcher_similar_state.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, index) => const SplashScreen(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, index) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, index) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => FeaturesSimilarCubit(
            FeaturesSimilarInitial(),
            HomeRepoImpl(ApiService(Dio())),
          ),
          child: BookDetailsView(
            //extra حلوه فشخ خلي بالك منمها
            //extra save date to navigate push other screen,
            //هي ال بتخلي تكون معايا الداتا علشان احطها في الاسكرين ال بعدها
            items: state.extra as Items,
          ),
        ),
      ),
    ],
  );
}
