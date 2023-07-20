import 'package:flutter/material.dart';

void main() {
  runApp(const Spacer());
}

class spacer extends StatelessWidget {
  const spacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Gambar")),
      body: Center(
        child: Row(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Container(
              height: 80,
              width: 80,
              color: Color.fromARGB(255, 148, 159, 152),
            ),
             Spacer(
              flex: 2,
            ),
            Container(
              height: 80,
              width: 80,
              color: Color.fromARGB(255, 78, 40, 181),
            ),
             Spacer(
              flex: 3,
            ),
            Container(
              height: 80,
              width: 80,
              color: Color.fromARGB(255, 255, 7, 201),
            ),

            ],
        ),
      ),
    );
  }
}