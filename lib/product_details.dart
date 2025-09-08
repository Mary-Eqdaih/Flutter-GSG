import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/products_model.dart';

import 'Widgets/rating.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)?.settings.arguments as ProductsModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Product Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.network(model.imgPath, height: 300)),
              SizedBox(height: 30),
              Text(model.title, style: TextStyle(fontSize: 20)),
              SizedBox(height: 30),

              Text(" Price : ${model.price}", style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Rating(rate: "${model.rate}"),
              SizedBox(height: 30),
              Text(
                " Description : ${model.description}",
                style: TextStyle(fontSize: 18),
              ),



              SizedBox(height: 30),
              SizedBox(
                width: 102,
                height: 40,

                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    // padding: EdgeInsetsGeometry.only(bottom: 1),
                    backgroundColor: const Color(0xFF7C6FF6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Buy Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
