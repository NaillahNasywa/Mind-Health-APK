import 'package:flutter/material.dart';

void main() {
  runApp(const image());
}

class image  extends StatelessWidget {
  const image ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Gambar")),
      body: Center(child: Container(
        color: Colors.amber,
         width: 200,
          height: 200,
           padding: EdgeInsets.all(10),
            child: Image(image: AssetImage('assets/img/profile1.png'),
            fit: BoxFit.fill,
            repeat: ImageRepeat.repeat,
            ),
            ),
            ),
    );
  }
}