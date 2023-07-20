import 'package:flutter/material.dart';
import 'package:loginapi/view/consultant/categories.dart';
import 'package:loginapi/profile/profile.dart';

class consul extends StatefulWidget {
  const consul({super.key});

  @override
  State<consul> createState() => _consulState();
}

class _consulState extends State<consul> {
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
                      margin: EdgeInsets.only(top: 83, right: 20,),
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
                  margin: EdgeInsets.only(top: 15),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                      ),
                      Text(
                        "Deepmind Consultant",
                        style: TextStyle(
                            color: Color(0xFFf09143A),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 45, top: 22),
                  child: Column(
                    children: [
                      Text(
                        " We can offer immediate confidential care",
                        style: TextStyle(
                            color: Color(0xFFf09143A),
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 115, top: 3, bottom: 15),
                  child: Column(
                    children: [
                      Text(
                        " with only a few clicks.",
                        style: TextStyle(
                            color: Color(0xFFf09143A),
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                categories(),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "assets/img/bucc.png",
                              width: 175.0,
                              height: 210.0,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 150.0,
                        height: 195.0,
                        child: Card(
                            color: Color(0xffBFD1DD),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 60.0,
                                  ),
                                  Text(
                                    "BK\nCoordinator",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
