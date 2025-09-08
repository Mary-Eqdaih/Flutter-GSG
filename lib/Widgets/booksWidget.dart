import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/books_model.dart';
import 'package:flutter_gsg/Routes/routes.dart';
class BooksWidget extends StatelessWidget {
  const BooksWidget({super.key, required this.model});
final BooksModel model;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: (){
        Navigator.pushNamed(context, Routes.bookDetails,arguments: model);
      },
      leading: Image.network(model.imgPath),
      title: Text(model.title),
      subtitle: Text("Release Date: ${model.date}"),

    );
  }
}
