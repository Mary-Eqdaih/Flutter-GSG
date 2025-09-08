import 'package:flutter/material.dart';

import 'package:flutter_gsg/products.dart';

import 'books.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Products(),
      Books(),

      const Center(child: Text('Books')), // tab 1 placeholder
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.amberAccent,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.shopping_bag),
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            activeIcon: Icon(Icons.library_books),
            label: "books",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "More"),
        ],
      ),

      body: screens[index],
    );
  }
}
