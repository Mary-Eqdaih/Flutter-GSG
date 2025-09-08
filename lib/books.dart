import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_gsg/Widgets/booksWidget.dart';

import 'package:http/http.dart';

import 'Data/books_model.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  List<BooksModel> books = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text("Books", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return BooksWidget(model: books[index]);
          },
        ),
      ),
    );
  }

  fetchData() async {
    var response = await get(
      Uri.parse("https://potterapi-fedeperin.vercel.app/en/books"),
    );
    var data = jsonDecode(response.body);
    for (Map map in data) {
      BooksModel model = BooksModel.fromJson(map);
      books.add(model);
    }
    setState(() {});
  }
}
