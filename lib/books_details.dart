import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/books_model.dart';
import 'package:flutter_gsg/Routes/routes.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    final BooksModel model =
        ModalRoute.of(context)?.settings.arguments as BooksModel;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(model.imgPath),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(model.title, style: TextStyle(fontSize: 20)),
              ),
              Text("Release Date : ${model.date}"),
              SizedBox(height: 20),
              Text(model.description),
            ],
          ),
        ),
      ),
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text("Book Details", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
