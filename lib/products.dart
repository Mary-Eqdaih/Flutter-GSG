import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/products_model.dart';
import 'package:flutter_gsg/Widgets/product_widget.dart';
import 'package:http/http.dart';

class Products extends StatefulWidget {
  const Products({super.key});


  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<ProductsModel> products = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.shopping_cart,color: Colors.white,),
          ),
        ],
        title: Text("Products" ,style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return  ProductWidget(model: products[index]);
        },
      ),
    );
  }





  fetchData() async {
    // Purpose: Converts a String URL into a Dart Uri object.
    var response = await get(Uri.parse('https://fakestoreapi.com/products'));
    var data = jsonDecode(response.body);
    // converts json String to a map or list [{}]
    log(response.body);
    // return json string
    //   convert a the list with the map inside to a list that contains a model [{}]-->[model]
    for (Map map in data) {
      ProductsModel model = ProductsModel.fromJson(map);
      // 3. Creating Dart Object From Map
      // ProductsModel model = ProductsModel.fromJson(map);
      // Here you call your factory constructor fromJson.
      // Input: one JSON map (like the one above)
      // Output: one Dart object of type ProductsModel.
      products.add(model);
    }
    setState(() {});
  }
}

