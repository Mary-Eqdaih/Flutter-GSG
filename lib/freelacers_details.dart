import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/freelancers_model.dart';
import 'package:flutter_gsg/Widgets/rating.dart';

class FreelancerDetails extends StatelessWidget {
  const FreelancerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)!.settings.arguments as FreelancersModel;
    return Scaffold(
      appBar: AppBar(title: Text("${model.name} Profile"), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(backgroundImage: AssetImage(model.imagePath), radius: 100),
                SizedBox(height: 30),
                Text(model.name),
                SizedBox(height: 30),
                Text(
                  model.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                SizedBox(height: 30),
                Rating(rate: model.rate),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
