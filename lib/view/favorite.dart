import 'package:flutter/material.dart';
import 'package:loginapi/profile/profile.dart';

class favorite extends StatefulWidget {
  const favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 83, 0, 0),
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
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      ),
                      Text(
                        "Discovery",
                        style: TextStyle(
                            color: Color(0xff09143A),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff09143A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 40,
                        width: 135,
                        margin: EdgeInsets.only(left: 83),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 25),
                            ),
                            Icon(
                              Icons.favorite_border,
                              size: 15,
                              color: Color(0xffF6F8FF),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Text(
                              "Favorite",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: Color(0xffF6F8FF),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 70, 0, 0),
                      ),
                      Text(
                        "Favorite Consultants",
                        style: TextStyle(
                            color: Color(0xff09143A),
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      ),
                      Image.asset('assets/img/1.png'),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Mrs. Sheyla",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff09143A),
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "someone who heals mental health",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff09143A),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                            ),
                            Image.asset("assets/img/bintang.png")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      ),
                      Image.asset('assets/img/2.png'),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Mr. Gunawan",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff09143A),
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "someone who heals mental health",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff09143A),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                            ),
                            Image.asset("assets/img/bintang.png")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 0, 20),
                      ),
                      Image.asset('assets/img/buhen.png'),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Mrs. Heny",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff09143A),
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "someone who heals mental health",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff09143A),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                            ),
                            Image.asset("assets/img/bintang.png")
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
    );
  }
}
