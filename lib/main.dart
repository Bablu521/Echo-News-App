import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:echo_news_app/constant/route.dart';
import 'package:echo_news_app/cubits/news_cubit/news_cubit.dart';
import 'package:echo_news_app/cubits/selected_news_title_cubit/selected_news_title_cubit.dart';
import 'package:echo_news_app/cubits/webview_cubit/webview_cubit.dart';
import 'package:echo_news_app/screens/home_screen.dart';
import 'package:echo_news_app/screens/splash_screen.dart';
import 'package:echo_news_app/screens/webview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsCubit>(create: (context) => NewsCubit()..getCurrentNews()),
        BlocProvider<WebViewCubit>(create: (context) => WebViewCubit()),
        BlocProvider<SelectedNewsTitleCubit>(create: (context) => SelectedNewsTitleCubit())
      ],
      child: MaterialApp(
        routes: {
          AppRoute.homeScreen : (context) => HomeScreen(),
          AppRoute.webViewScreen: (context) => WebViewScreen()
        },
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
