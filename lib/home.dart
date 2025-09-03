import 'package:flutter/material.dart';
import 'package:flutter_gsg/Data/freelancers_model.dart';
import 'package:flutter_gsg/Data/services_model.dart';
import 'package:flutter_gsg/Widgets/FreelancersWidget.dart';
import 'package:flutter_gsg/Widgets/SectionWidget.dart';
import 'package:flutter_gsg/Widgets/ServicesWidget.dart';
import 'Routes/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final input = ModalRoute.of(context)?.settings.arguments as String?;
    List<Widget> screens = [
      Column(
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
                  Text("${input ?? "Guest"}", style: TextStyle(fontSize: 16)),
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
              itemBuilder: (Context, index) {
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
      Center(child: Text("Explore")),
      Center(child: Text("Chat")),
      Center(child: Text("Blog")),
      Center(child: Text("Account")),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // This tells the BottomNavigationBar which item is currently active (highlighted).
        // It will show the selected icon and label in the selected style
        currentIndex: index,
        // This function runs when the user taps on a bottom navigation item.
        // value is the index of the tapped item (e.g. 0 for first, 1 for second, etc.)
        onTap: (value) {
          // setState() is a special method in StatefulWidget that tells Flutter to rebuild the UI.
          // Any time you change a variable that affects the UI (like index), you must call setState() to apply the change.
          setState(() {
            index = value;
          });
        },
        backgroundColor: Color(0xff1D1F24),
        selectedItemColor: Color(0xff827BEB),
        unselectedItemColor: Color(0xff676D75),
        unselectedLabelStyle: TextStyle(color: Color(0xff676D75)),
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.chat_bubble),
            icon: Icon(Icons.chat_bubble_outline),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.article),
            icon: Icon(Icons.article_outlined),
            label: "Blog",
          ),

          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_2_outlined),
            label: "Account",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
          child: Column(
            children: [
              ListTile(
                title: Text("Sign In"),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, Routes.signIn),
              ),
              ListTile(
                title: Text("Sign Up"),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, Routes.signUp),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/logo.png"),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset("assets/bell.png")),

          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/shopping-cart.png"),
          ),

          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.signIn);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(child: screens[index]),
    );
  }
}
