import 'package:flutter/material.dart';
import 'package:flutter_gsg/Widgets/FreelancersWidget.dart';
import 'package:flutter_gsg/Widgets/SectionWidget.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        title: Image.asset("assets/logo.png"),
        actions: [
          Image.asset("assets/bell.png"),
          SizedBox(width: 20),
          Container(
            width: 44,
            height: 44,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(30, 54, 114, 0.12),
              image: DecorationImage(
                image: AssetImage("assets/shopping-cart.png"),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                      top: 18,
                      bottom: 16,
                      left: 16,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hint: Text("search Here"),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(1, 178, 186, 205),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(right: 16, top: 18, bottom: 16),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Image.asset("assets/sort.png"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 21),
              child: Container(
                padding: EdgeInsets.only(left: 36, right: 32),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.white, Color(0xff9CB9DD)],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/text.png"),
                        SizedBox(height: 8),
                        Text(
                          "50 % OFF",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Et provident eos est dolore. Eum libero\neligendi molestias aut et quibusdam \naspernatur.",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff5C6F81),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                            height: 30,
                            padding: EdgeInsets.only(right: 10),
        
                            decoration: BoxDecoration(color: Colors.black),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'buy It Now',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
        
                    Image.asset("assets/person.png"),
                  ],
                ),
              ),
            ),
            SectionWidget(title: "Top Rated Freelancers"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Freelancer(
                  name: "Mary",
                  title: "Engineer",
                  rate: "5",
                  imagePath: "assets/person2.png",
                ),
                Freelancer(
                  name: "Kamel",
                  title: "Engineer",
                  rate: "4.9",
                  imagePath: "assets/person2.png",
                ),
                Freelancer(
                  name: "Isaac",
                  title: "Doctor",
                  rate: "3",
                  imagePath: "assets/person2.png",
                ),
                Freelancer(
                  name: "Meera",
                  title: "Nurse",
                 rate: "5.0",
                  imagePath: "assets/person2.png",
                ),

              ],
            ),
            SectionWidget(title: "Top Services"),

          ],
        ),
      ),
    );
  }
}
