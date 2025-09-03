import 'package:flutter/material.dart';
import 'package:flutter_gsg/freelacers_details.dart';
import 'package:flutter_gsg/home.dart';
import 'package:flutter_gsg/service_details.dart';
import 'package:flutter_gsg/sign_up.dart';
import 'package:flutter_gsg/sign_in.dart';
import 'Routes/routes.dart';

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
        Routes.freelancerDetails: (context)=> FreelancerDetails(),
        Routes.serviceDetails: (context)=> ServiceDetails(),
      },
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}
