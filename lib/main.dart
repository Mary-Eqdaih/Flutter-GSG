import 'package:flutter/material.dart';
import 'package:flutter_gsg/home.dart';
import 'package:flutter_gsg/sign_up.dart';
import 'package:flutter_gsg/sign_in.dart';
import 'Routes/routes.dart';


void main() {
  runApp(
    MaterialApp(
      routes: {
        Routes.home: (context) => Home(),
        Routes.signIn: (context) => SignIn(),
        Routes.signUp: (context) => SignUp(),


      },
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    ),
  );
}
