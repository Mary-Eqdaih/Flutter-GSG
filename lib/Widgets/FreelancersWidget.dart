import 'package:flutter/material.dart';
import 'package:flutter_gsg/Widgets/rating.dart';

class Freelancer extends StatelessWidget {
  const Freelancer({
    super.key,
    required this.name,
    required this.title,
    required this.rate,
    required this.imagePath,
  });
  final String name;
  final String title;
  final String rate;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage(imagePath), radius: 35),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Text(name, style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1D1F24),
                  ),
                ),
                Rating(rate: rate),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
