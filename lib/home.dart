import 'package:flutter/material.dart';
import 'package:flutter_gsg/Widgets/homeWidget.dart';
import 'Routes/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {

    List<Widget> screens = [
      HomeWidget(),
     // هل لازم اعملها سكرين لحال احسن وبس احط اسمها ارتب للكود ؟
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
