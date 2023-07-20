import 'package:loginapi/onboard4.dart';
import 'package:loginapi/onboard/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constant.dart';
import 'package:loginapi/signin.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/img/onboard1.png',
      text: "With The Flow",
      desc: "We support organization in improving the mental health.",
      bg: Color(0xffF5F4F2),
      button: Color(0xFF09143A),
    ),
    OnboardModel(
      img: 'assets/img/onboard2.png',
      text: "Stay In Touch",
      desc: "Provide support and guidance to students.",
      bg: Color(0xffF5F4F2),
      button: Color(0xFF09143A),
    ),
    OnboardModel(
      img: 'assets/img/onboard3.png',
      text: "With DeepMind",
      desc: "Vission -To become a center for guidance and counseling .",
      bg: Colors.white,
      button: Color(0xFF09143A),
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 60, bottom: 50, left: 85),
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/img/logo.png'),
                          Text(
                            'DeepMind',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff1A1A1A),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Image.asset(screens[index].img)),
                  Container(
                    margin: EdgeInsets.only(bottom: 13),
                    child: Text(
                      screens[index].text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: kijo,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Text(
                      screens[index].desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                        color: kabu,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    height: 10.0,
                    child: ListView.builder(
                      itemCount: screens.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3.0),
                                width: currentIndex == index ? 25 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? kbrown
                                      : kbrown300,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ),
                  InkWell(
                      onTap: () async {
                        print(index);
                        if (index == screens.length - 1) {
                          await _storeOnboardInfo();
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        }
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.bounceIn,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              TextButton(
                                onPressed: () {
                                  _storeOnboardInfo();
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                },
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                      color: kgelap),
                                ),
                              ),
                              // Text(
                              //   "Skip",
                              //   style: TextStyle(
                              //       fontFamily: 'Poppins',
                              //       fontSize: 16.0,
                              //       color: index % 2 == 0 ? kgelap : kgelap),
                              // ),
                              SizedBox(
                                width: 15.0,
                              ),
                            ]),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10),
                            decoration: BoxDecoration(
                                color: Color(0xff09143A),
                                borderRadius: BorderRadius.circular(15.0)),
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: kwhite,
                              )
                            ]),
                          ),
                        ],
                      ))
                ],
              );
            }),
      ),
    );
  }
}
