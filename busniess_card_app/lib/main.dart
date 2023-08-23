// ignore_for_file: prefer_const_constructors
// import 'package:flutter/cupertino.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(cardapp());
}

class cardapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // backgroundColor: Color(0xFF2B475E),
          backgroundColor: Color(0xff3d566b),
          body: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 145,
                    backgroundColor: Color(0xfffcfeff),
                    child: CircleAvatar(
                        radius: 140,
                        backgroundImage: AssetImage(
                          'nn/moatasem.jpg',
                        ))),
                Text("Eng Moatasem",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "Pacifico",
                    )),
                Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(color: Color(0xff9c9c9c), fontSize: 12),
                ),
                Divider(
                  color: Color(0xff9c9c9c),
                  thickness: 2,
                  endIndent: 16,
                  indent: 16,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  color: Color(0xffffffff),
                  child: ListTile(
                    leading:
                        Icon(Icons.phone, size: 30, color: Color(0xFF2B475E)),
                    title: Text('(+972) 0599999999'),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  color: Color(0xffffffff),
                  child: ListTile(
                    leading:
                        Icon(Icons.mail, size: 30, color: Color(0xFF2B475E)),
                    title: Text('moatasem2000@hotmail.com'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
