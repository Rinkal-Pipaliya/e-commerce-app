import 'package:flutter/material.dart';
import 'package:savory_berry_app/utils/routes_utils.dart';
import 'package:savory_berry_app/views/screen/detail_page.dart';
import 'package:savory_berry_app/views/screen/home_page.dart';
import 'package:savory_berry_app/views/screen/favorite_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homePage: (context) => const HomePage(),
        MyRoutes.detailPage: (context) => const DetailPage(),
        // MyRoutes.favoritepage:(context) => const FavoritePage(),
      },
    );
  }
}
