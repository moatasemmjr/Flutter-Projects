import 'package:flutter/material.dart';
import 'package:toku/screens/calssnum.dart';
import 'package:toku/screens/item.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});
  final List<classall> num = const [
    classall(
        namet: "Kōdoku suru koto o    ", nameen: "dont forget to subscribe"),
    classall(namet: "Watashi wa puroguramingu ", nameen: "i love  programming"),
    classall(
        namet: "Puroguramingu wa kantandesu ", nameen: "programming is easy"),
    classall(namet: "Doko ni iku no ", nameen: "where are you going"),
    classall(namet: 'Namae wa nandesu ka', nameen: 'what is your name ?'),
    classall(namet: "Doko ni iku no ", nameen: "where are you going"),
    classall(namet: 'Namae wa nandesu ka', nameen: 'what is your name ?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Colors"),
          backgroundColor: const Color(0xff79359F),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: num.length,
          itemBuilder: (context, index) {
            return item(
              num: num[index],
              color: const Color(0xff79359F),
            );
          },
        ));
  }
}
