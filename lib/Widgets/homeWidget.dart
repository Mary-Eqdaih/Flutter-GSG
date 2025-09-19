import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Data/freelancers_model.dart';
import '../Data/services_model.dart';
import '../sign_in.dart';
import 'FreelancersWidget.dart';
import 'SectionWidget.dart';
import 'ServicesWidget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  String? user;

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  Future<void> _loadUser() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => user = prefs.getString(SignIn.userCredentialsKey));
  }

  List<ServicesModel> services = [
    ServicesModel(
      avatar: "assets/avatar.png",
      imageURL: "assets/img1.png",
      jobTitle: "Software Engineer",
      bio: "Flutter Developer",
      name: "Mariam Eqdaih",
      rate: "5.0",
    ),
    ServicesModel(
      avatar: "assets/avatar.png",
      imageURL: "assets/img2.png",
      jobTitle: "Nurse",
      bio: "I love Helping People",
      name: "Huda Mustafa",
      rate: "3.9",
    ),
    ServicesModel(
      avatar: "assets/avatar.png",
      imageURL: "assets/img3.png",
      jobTitle: "Teacher",
      bio: "English Lover",
      name: "Eman Malik",
      rate: "4.0",
    ),
  ];
  List<FreelancersModel> freelancers = [
    FreelancersModel(
      name: "Mariam ",
      title: " Engineer",
      rate: "5",
      imagePath: "assets/person2.png",
    ),
    FreelancersModel(
      name: "Isaac ",
      title: " Doctor",
      rate: "3",
      imagePath: "assets/person2.png",
    ),
    FreelancersModel(
      name: "Ali ",
      title: " Nurse",
      rate: "4",
      imagePath: "assets/person2.png",
    ),
    FreelancersModel(
      name: "Huda ",
      title: " Artist",
      rate: "3.5",
      imagePath: "assets/person2.png",
    ),
    FreelancersModel(
      name: "Meera ",
      title: "Teacher",
      rate: "4.3",
      imagePath: "assets/person2.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9CB9DD),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(user ?? "Guest", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
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
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/sort.png"),
                  ),
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
                          padding: EdgeInsets.only(right: 10),
                          height: 30,

                          decoration: BoxDecoration(color: Colors.black),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                size: 14,
                                color: Colors.white,
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
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: freelancers.length,
              itemBuilder: (context, index) {
                return Freelancer(model: freelancers[index]);
              },
              scrollDirection: Axis.horizontal,
            ),
          ),

          SectionWidget(title: "Top Services"),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                ServicesWidget(model: services[0]),
                ServicesWidget(model: services[1]),
                ServicesWidget(model: services[2]),
              ],
            ),
          ),
          SectionWidget(title: "Best Bookings"),
        ],
      ),
    );
  }
}
