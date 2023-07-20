import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loginapi/view/consultant/consul.dart';
import 'package:loginapi/view/favorite.dart';
import 'package:loginapi/view/history.dart';
import 'package:loginapi/view/homescr.dart';

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int selected_index = 0;
  List<Widget> _widgetOptions = <Widget>[
    homescr(),
    consul(),
    history(),
    favorite()
  ];

  void _onItemTap(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selected_index),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xffF6F6F6),
            primaryColor: Color(0xffF6F6F6),
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.grey))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selected_index,
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view, size: 20,),
              label: 'Consultant',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_chart, size: 20,),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 20,),
              label: 'Favorite',
            ),
          ],
          onTap: _onItemTap,
          selectedItemColor: Color(0xff24285B),
          unselectedItemColor: Color(0xffA6A6AA),
          selectedLabelStyle: TextStyle(fontSize: 12, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
          unselectedLabelStyle: TextStyle(fontSize: 11, fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
