import 'package:flutter/material.dart';
import 'package:toku/screens/Category.dart';
import 'package:toku/screens/Colors.dart';
import 'package:toku/screens/FamilyMembers.dart';
import 'package:toku/screens/Numbers.dart';
import 'package:toku/screens/Phrases.dart';

void main() {
  runApp(MaterialApp(home: homeb()));
}

class homeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
            title: const Text("Toku"),
            backgroundColor: const Color(0xff46322B)),
        body: Column(
          children: [
            Category(
                'Numbers',
                const Color(0xffEF9235),
                () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Numbers()),
                    )),
            Category(
                'FamilyMembers',
                const Color(0xff558B37),
                () => Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const FamilyMembers();
                    }))),
            Category(
                'Colors',
                const Color(0xff79359F),
                () => Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Colors_p();
                    }))),
            Category(
                'Phrases',
                const Color(0xff50ADC7),
                () => Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Phrases();
                    })))
          ],
        ),
      ),
    );
  }
}
