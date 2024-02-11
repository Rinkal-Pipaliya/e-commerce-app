import 'package:flutter/material.dart';
import 'package:savory_berry_app/utils/product_utils.dart';
import 'package:savory_berry_app/utils/routes_utils.dart';

Widget ProductCart({required String category, required BuildContext context}) {
  var allProducts;
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        ...allRecipies
            .map(
              (e) => (category == e['category'])
                  ? GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(MyRoutes.detailPage, arguments: e);
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              image: NetworkImage(e['image']),
                              fit: BoxFit.cover,
                            )),
                      ),
                    )
                  : Container(),
            )
            .toList()
      ],
    ),
  );
}
