import 'package:flutter/material.dart';
import 'package:flutter_gsg/Widgets/homeWidget.dart';
import 'package:flutter_gsg/books.dart';
import 'package:flutter_gsg/freelacers_details.dart';
import 'package:flutter_gsg/home.dart';
import 'package:flutter_gsg/product_details.dart';
import 'package:flutter_gsg/service_details.dart';
import 'package:flutter_gsg/sign_up.dart';
import 'package:flutter_gsg/sign_in.dart';
import 'package:flutter_gsg/test.dart';
import 'Routes/routes.dart';
import 'books_details.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      routes: {
        Routes.home: (context) => Home(),
        Routes.signIn: (context) => SignIn(),
        Routes.signUp: (context) => SignUp(),
        Routes.homeWidget: (context) => HomeWidget(),
        Routes.freelancerDetails: (context)=> FreelancerDetails(),
        Routes.serviceDetails: (context)=> ServiceDetails(),
        Routes.test: (context)=> Test(),
        Routes.productDetails: (context)=> ProductDetails(),
        Routes.bookDetails: (context)=> BookDetails(),
        Routes.books: (context)=> Books(),
      },
      debugShowCheckedModeBanner: false,
      home:Test(),
    ),
  );
}
