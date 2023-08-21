import 'package:flutter/material.dart';

void main() {
  runApp(img());
}

class mjr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(136, 120, 170, 27),
          ),
          Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(137, 247, 0, 0),
          ),
          Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(137, 50, 32, 32),
          ),
        ],
      )),
    );
  }
}

class img extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image(image: AssetImage('img/im.png')),
      ),
    );
  }
}
