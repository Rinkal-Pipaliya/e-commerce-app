import 'package:flutter/material.dart';

import '../../utils/product_utils.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: favoriteItems
                .map(
                  (e) => Container(
                    height: size.height * 0.22,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: Text(e['title']),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
