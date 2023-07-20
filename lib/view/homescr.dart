import 'package:flutter/material.dart';
import 'package:loginapi/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';

class homescr extends StatefulWidget {
  const homescr({super.key});

  @override
  State<homescr> createState() => _homescrState();
}

class _homescrState extends State<homescr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 83, right: 20),
                    ),
                    Icon(
                      Icons.reorder,
                      color: Color(0xff09143A),
                      size: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 230),
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: IconButton(
                            icon: Icon(
                              Icons.account_circle,
                              color: Colors.grey,
                              size: 40,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DataSiswa()),
                              );
                            },
                          )),
                        ],
                      ),
                    ),
                  ]),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    "Best of Your",
                    style: TextStyle(
                        color: Color(0xff09143A),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20, top: 5, bottom: 10),
                  child: Text(
                    "Mind Health",
                    style: TextStyle(
                        color: Color(0xff90844C),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F5F7),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      cursorHeight: 20,
                      autofocus: false,
                      decoration: InputDecoration(
                          hintText: "search",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),

                Container(
                  child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 60, right: 40),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                    ),
                    Image.asset(
                      'assets/img/hero5.png',
                      width: 270,
                    ),
                  ]),
                ),

                //gategory
                Container(
                  margin: EdgeInsets.only(top: 12, left: 20),
                  child: Text(
                    "Category",
                    style: TextStyle(
                        color: Color(0xFF09143A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                    textAlign: TextAlign.start,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 15, left: 7),
                  child: Center(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20.0,
                      children: <Widget>[
                        SizedBox(
                          width: 100.0,
                          height: 100.0,
                          child: Card(
                            color: Color(0xffBFD1DD),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/img/list.png",
                                    width: 62.0,
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                          height: 100.0,
                          child: Card(
                            color: Color(0xffBFD1DD),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                  ),
                                  Image.asset(
                                    "assets/img/hallo.png",
                                    width: 400.0,
                                    height: 70,
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                          height: 100.0,
                          child: Card(
                            color: Color(0xffBFD1DD),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                  ),
                                  Image.asset(
                                    "assets/img/srch.png",
                                    width: 600.0,
                                    height: 70,
                                  ),
                                  // SizedBox(
                                  //   height: 10.0,
                                  // ),
                                  // Container(
                                  //   margin: EdgeInsets.only(top: 6, left: 90),
                                  // ),
                                  // Text(
                                  //   'Student Data',
                                  //   style: TextStyle(
                                  //       color: Color.fromARGB(249, 7, 26, 42),
                                  //       fontWeight: FontWeight.bold,
                                  //       fontSize: 15,
                                  //       fontFamily: 'Poppins',
                                  //       ),
                                  // ),
                                ],
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 15),
                      ),
                      Text(
                        "Meeting History",
                        style: TextStyle(
                            color: Color.fromARGB(224, 0, 0, 0),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 33),
                            ),
                            Text(
                              "Student Data",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Color.fromARGB(224, 0, 0, 0),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 30),
                            ),
                            Text(
                              "Meeting Archive",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Color.fromARGB(224, 0, 0, 0),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Type of service bk
                Container(
                  margin: EdgeInsets.only(top: 40, left: 20),
                  child: Text(
                    "Type of service bk",
                    style: TextStyle(
                        color: Color(0xFF09143A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 3),
                  child: Center(
                    child: Wrap(
                      spacing: 20,
                      //unutk mngtur jarak container ynng di tengah2
                      runSpacing: 20.0,
                      children: <Widget>[
                        SizedBox(
                          width: 160.0,
                          height: 180.0,
                          child: Card(
                            color: Color(0xffBFD1DD),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                                child: Container(
                              // padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    " Personal\n Guidance",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 241, 240, 240),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                  ),
                                  Image.asset(
                                    "assets/img/siswasma.png",
                                    width: 90.0,
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 180.0,
                          child: Card(
                            color: Color(0xffBFD1DD),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "  Career \nGuidance",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 241, 240, 240),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                  ),
                                  Image.asset(
                                    "assets/img/karir2.png",
                                    width: 118.0,
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 180.0,
                          child: Card(
                            color: Color(0xffBFD1DD),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "  Social\nGuidance",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 241, 240, 240),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19.0,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                  ),
                                  Image.asset(
                                    "assets/img/sosial.png",
                                    width: 110.0,
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 180.0,
                          child: Card(
                            color: Color(0xffBFD1DD),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "   Study\nGuidance",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 241, 240, 240),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 1),
                                  ),
                                  Image.asset(
                                    "assets/img/ap.png",
                                    width: 80.0,
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
