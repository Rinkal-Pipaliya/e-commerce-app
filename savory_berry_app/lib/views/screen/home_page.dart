import 'package:flutter/material.dart';
import 'package:savory_berry_app/utils/product_utils.dart';
import 'package:savory_berry_app/utils/routes_utils.dart';
import 'package:savory_berry_app/views/componanets/category_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        title: const Text(
          "Savory Barry",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                MyRoutes.favoritepage,
              );
            },
            icon: const Icon(Icons.shopping_cart),
          ),
          const Icon(Icons.notification_add_outlined),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              " Making A New Item",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Top jpg
            Container(
              height: 300,
              color: Colors.pink,
              child: Image.asset(
                "assets/images/gsp.jpg",
                // width: 500,
                cacheHeight: 400,
                cacheWidth: 400,
                fit: BoxFit.cover,
              ),
              // width: 500,
            ),
            //Selling Fast + CountDown
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: const TextSpan(
                        text: "Easy To Cook",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(5),
                          top: Radius.circular(5),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "14",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      ":",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(5),
                          top: Radius.circular(5),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "11",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: GestureDetector(
                  child: Column(
                    children: allRecipies
                        .map(
                          (e) => CategoryView(category: e, context: context),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rectangle_rounded),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.white70,
      ),
    );
  }
}
