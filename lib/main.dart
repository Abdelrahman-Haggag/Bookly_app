import 'package:bookly/Features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/Features/home/logic/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/Features/home/logic/manager/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly/core/networking/api_service.dart';
import 'package:bookly/core/utils/color.dart';
import 'package:bookly/Features/home/ui/views/home_Screen.dart';
import 'package:bookly/Features/splash/ui/views/splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=> AllBooksCubit(HomeRepoImpl(apiservices: Apiservices(Dio())))),
      BlocProvider(create: (context)=> BestSellerCubit(HomeRepoImpl(apiservices: Apiservices(Dio())))),
    ], child: MaterialApp(
      routes: {
        "homescreen": (context) => HomeScreen()
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Appcolor.darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    ));
  }
}