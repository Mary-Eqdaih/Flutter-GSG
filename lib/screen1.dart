import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 16,
                  right: 12,
                  bottom: 16,
                ),
                child: Container(
                  width: 295,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  padding: EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text("Search Here"),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 16, top: 18, bottom: 16),
                child: Container(
                  width: 51,
                  height: 51,
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
          Row(
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
                    "Top Rated Freelancers",
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
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('assets/person2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: 72,
                      width: 72,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Wade Warren",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "Beautician",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1D1F24),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(20, 130, 123, 235),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/star.png"),
                                SizedBox(width: 5),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('assets/person2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: 72,
                      width: 72,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Wade Warren",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "Beautician",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1D1F24),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(20, 130, 123, 235),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/star.png"),
                                SizedBox(width: 5),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('assets/person2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: 72,
                      width: 72,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Wade Warren",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "Beautician",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1D1F24),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(20, 130, 123, 235),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/star.png"),
                                SizedBox(width: 5),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('assets/person2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: 72,
                      width: 72,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Wade Warren",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "Beautician",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1D1F24),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(20, 130, 123, 235),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/star.png"),
                                SizedBox(width: 5),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
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
                    "Top Services",
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
          ),
        ],
      ),
    );
  }
}
