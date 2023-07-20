import 'package:flutter/material.dart';
import 'package:loginapi/profile/spacer.dart';
import 'package:loginapi/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataSiswa extends StatefulWidget {
  const DataSiswa({super.key});

  @override
  State<DataSiswa> createState() => _DataSiswaState();
}

class _DataSiswaState extends State<DataSiswa> {
  late SharedPreferences preferences;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {
    setState(() {
      isLoading = true;
    });
    preferences = await SharedPreferences.getInstance();
    setState(() {
      isLoading = false;
    });
  }

  void logout() {
    preferences.clear();
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => signin(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 17,
                        left: 10,
                        right: 58,
                      ),
                      child: Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios)),
                          Spacer(
                            flex: 6,
                          ),
                          Text(
                            'Account Information',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff454545),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(
                            flex: 6,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        left: 58,
                        right: 55,
                      ),
                      width: 130,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(70),
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/img/profile1.png'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        left: 60,
                        right: 55,
                      ),
                      child: Text(
                        preferences.getString('name').toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                        left: 98,
                        right: 90,
                      ),
                      height: 43,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Color(0xff09143A),
                        ),
                        color: Color(0xff09143A),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 10, right: 10),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.person_outline,
                                  size: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Username",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xff1A1A1A),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                      ),
                                      Text(
                                          preferences
                                              .getString('name')
                                              .toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xff90844C),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.mail_outline,
                                  size: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xff1A1A1A),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                      ),
                                      Text(
                                          preferences
                                              .getString('email')
                                              .toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xff90844C),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lock,
                                  size: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Password",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xff1A1A1A),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                      ),
                                      Text("******",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xff90844C),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            margin: EdgeInsets.only(top: 18, left: 270),
                            child: Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    logout();
                                  },
                                  child: Container(
                                    child: Text(
                                      "Logout",
                                      style: TextStyle(
                                          color: Color(0xff90844C),
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
    ));
  }
}
