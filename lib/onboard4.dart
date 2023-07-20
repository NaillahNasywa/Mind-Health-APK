import 'package:loginapi/onboard4.dart';
import 'package:loginapi/onboard/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loginapi/signin.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/img/onboard4.png',
      text: "The Great Idea",
      desc:
          "Whether you want to boost your mental health, —DeepMind is your go to. Prevention Detect problems early and increase resilience.",
      bg: Color(0xffF5F4F2),
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
                      margin: EdgeInsets.only(bottom: 48),
                      child: Image.asset(screens[index].img)),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    child: Text(
                      screens[index].text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40, left: 20, right: 20),
                    child: Text(
                      screens[index].desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () async {
                        print(index);
                        if (index == screens.length - 1) {
                          await _storeOnboardInfo();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signin()),
                          );
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
                                horizontal: 110.0, vertical: 20),
                            decoration: BoxDecoration(
                                color: Color(0xff09143A),
                                borderRadius: BorderRadius.circular(15.0)),
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
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
