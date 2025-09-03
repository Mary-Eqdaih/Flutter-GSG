import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/services_model.dart';
import 'package:flutter_gsg/Widgets/rating.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)?.settings.arguments as ServicesModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff827BEB),
        title: Text("${model.name}'s Services"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset(model.avatar ,height: 300,),
                SizedBox(height: 30,),
                Text(model.name,style: TextStyle(fontSize: 20),),
                SizedBox(height: 30,),
                Text(model.jobTitle,style: TextStyle(fontSize: 20),),
                SizedBox(height: 30,),
                Text(model.bio,style: TextStyle(fontSize: 20),),
                SizedBox(height: 30,),
                Rating(rate: model.rate,),
                SizedBox(height: 30,),
                SizedBox(
                  width: 102,
                  height: 40,

                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      // padding: EdgeInsetsGeometry.only(bottom: 1),
                      backgroundColor: const Color(
                        0xFF7C6FF6,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Book Now",
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
      ),
    );
  }
}
