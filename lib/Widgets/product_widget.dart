import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/products_model.dart';
import 'package:flutter_gsg/Routes/routes.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.model});
  final ProductsModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:(){
        Navigator.pushNamed(context,Routes.productDetails,arguments: model);
      },
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(model.imgPath))
        ),
      ),
      title: Text(model.title),
      subtitle: Row(
        children: [
          Text(model.rate.toString()),
          Icon(Icons.star, color: Colors.yellow),
          Text('(${model.count.toString()})'),
        ],
      ),
      trailing: Text(model.price.toString()),
    );
  }
}
