import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/freelancers_model.dart';
import 'package:flutter_gsg/Routes/routes.dart';
import 'package:flutter_gsg/Widgets/rating.dart';

class Freelancer extends StatelessWidget {
  const Freelancer({super.key, required this.model});
  final FreelancersModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.freelancerDetails,
          arguments: model,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 80,
          left: 15,
          right: 15,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(model.imagePath),
              radius: 35,
            ),
            Positioned(
              bottom: -60,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      model.name,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      model.title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1D1F24),
                      ),
                    ),
                    Rating(rate: model.rate),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
