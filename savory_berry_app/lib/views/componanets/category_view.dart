import 'package:flutter/material.dart';
import 'package:savory_berry_app/views/componanets/product_fav.dart';

Widget CategoryView({required String category, required BuildContext context}) {
  Size size = MediaQuery.of(context).size;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        category,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
      ProductCart(category: category, context: context),
    ],
  );
}
