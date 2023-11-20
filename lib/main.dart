import 'package:bookly/Core/utils/api_servic.dart';
import 'package:bookly/Core/utils/app_route.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/features_book_cubit/features_book_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/features_book_cubit/features_book_state.dart';
import 'package:bookly/Features/home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/newset_book_cubit/newset_book_state.dart';
import 'package:bookly/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturesBookCubit(
            FeaturesBooksInitial(),
            HomeRepoImpl(
              ApiService(
                Dio(),
              ),
            ),
          )..fetchFeaturesBook(),
        ),
        BlocProvider(
          create: (context) => NewsetBookCubit(
            NewsetBookInitial(),
            HomeRepoImpl(
              ApiService(
                Dio(),
              ),
            ),
          )..fetchNewsetBook(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
      ),
    );
  }
}
