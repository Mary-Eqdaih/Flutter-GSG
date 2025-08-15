
import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {


  const SectionWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
   return  Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Padding(
         padding: const EdgeInsets.only(bottom: 14),
         child: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               end: Alignment.centerLeft,
               begin: Alignment.centerRight,
               colors: [Colors.white, Color(0xff9CB9DD)],
             ),
           ),
           padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
           child: Text(
             title,
             style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
           ),
         ),
       ),
       TextButton(
         onPressed: () {},

         child: Text(
           "View All",
           style: TextStyle(
             fontSize: 14,
             color: Color(0xff154883),
             decoration: TextDecoration.underline,
           ),
         ),
       ),
     ],
   );

  }

}