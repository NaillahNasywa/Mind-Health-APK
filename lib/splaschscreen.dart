import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:loginapi/nav.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 120),
          ),
          Text(
            "Login Successful",
            style: TextStyle(
                color: Color(0xFFf90844C),
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          Container(
            padding: EdgeInsets.only(top: 80),
            width: 340,
            height: 290,
            child: Lottie.asset('animations/splash.json'),
          ),
          Container(
            padding: EdgeInsets.only(left: 0, top: 100),
            child: Column(
              children: [
                Text(
                  "Login Succesful",
                  style: TextStyle(
                      color: Color(0xFFf09143A),
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 0, top: 80),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                ),
                Text(
                  "wait for 3 seconds",
                  style: TextStyle(
                      color: Color(0xFFf24285B),
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          )
        ],
      ),
      nextScreen: const nav(),
      backgroundColor: Color(0xffF5F4F2),
      splashIconSize: 1000,
      duration: 5000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
