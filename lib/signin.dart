import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:loginapi/method/api.dart';
import 'package:loginapi/nav.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loginapi/splaschscreen.dart';
import 'package:loginapi/view/history.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void loginUser() async {
    final data = {
      'email': email.text.toString(),
      'password': password.text.toString(),
    };

    final result = await API().postRequest(route: '/login', data: data);
    final Response = jsonDecode(result.body);
    if (Response['status'] == 200) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setInt('user_id', Response['user']['siswa']['id']);
      await preferences.setString('name', Response['user']['name']);
      await preferences.setString('email', Response['user']['email']);
      await preferences.setString('token', Response['token']);

      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => splash()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 90, 0, 0),
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff09143A),
                          size: 25,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 100),
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                              color: Color(0xff09143A),
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 80),
                        ),
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Color(0xff09143A),
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          "Sign in with your Email & Password",
                          style: TextStyle(
                              color: Color(0xff90844C),
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(50),
                    child: Form(
                      child: Column(children: [
                        TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color(0xff90844C), width: 2.0),
                            ),
                            label: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                ),
                                Text(
                                  "Enter Your Username",
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 13),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 60),
                                ),
                                Icon(Icons.mail_outline),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            label: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                ),
                                Text("Enter Your Password",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 13)),
                                Container(
                                  margin: EdgeInsets.only(left: 60),
                                ),
                                Icon(Icons.lock_outline),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              CheckboxExample(),
                              Text(
                                "Remember Me",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    color: Color(0xff1A1A1A)),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 52),
                              ),
                              Text(
                                "Forgot Password",
                                style: TextStyle(
                                    color: Color(0xff90844C),
                                    fontFamily: 'Poppins',
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 167,
                        ),
                        SizedBox(
                            width: 350,
                            height: 50,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xff09143A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {},
                              child: InkWell(
                                onTap: () {
                                  loginUser();
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ))
                      ]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xff09143A);
      }
      return Color(0xffAFA8A8);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
