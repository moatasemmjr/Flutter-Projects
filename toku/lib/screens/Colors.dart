import 'package:flutter/material.dart';
import 'package:toku/screens/calssnum.dart';
import 'package:toku/screens/item.dart';

class Colors_p extends StatelessWidget {
  const Colors_p({super.key});
  final List<classall> num = const [
    classall(
        img: 'assets/images/colors/color_black.png',
        namet: "Burakku",
        nameen: "black"),
    classall(
        img: 'assets/images/colors/color_brown.png',
        namet: "Chairo",
        nameen: "brown"),
    classall(
        img: 'assets/images/colors/color_dusty_yellow.png',
        namet: "Hokori ppoi kiiro",
        nameen: "dusty yellow"),
    classall(
        img: 'assets/images/colors/color_gray.png',
        namet: "Gurē",
        nameen: "gray"),
    classall(
        img: 'assets/images/colors/color_green.png',
        namet: "Midori",
        nameen: "green"),
    classall(
        img: 'assets/images/colors/color_gray.png',
        namet: "Gurē",
        nameen: "gray"),
    classall(
        img: 'assets/images/colors/color_green.png',
        namet: "Midori",
        nameen: "green"),
    classall(
        img: 'assets/images/colors/color_gray.png',
        namet: "Gurē",
        nameen: "gray"),
    classall(
        img: 'assets/images/colors/color_green.png',
        namet: "Midori",
        nameen: "green"),
    classall(
        img: 'assets/images/colors/color_gray.png',
        namet: "Gurē",
        nameen: "gray"),
    classall(
        img: 'assets/images/colors/color_green.png',
        namet: "Midori",
        nameen: "green"),
    classall(
        img: 'assets/images/colors/color_gray.png',
        namet: "Gurē",
        nameen: "gray"),
    classall(
        img: 'assets/images/colors/color_green.png',
        namet: "Midori",
        nameen: "green"),
    classall(
        img: 'assets/images/colors/color_gray.png',
        namet: "Gurē",
        nameen: "gray"),
    classall(
        img: 'assets/images/colors/color_green.png',
        namet: "Midori",
        nameen: "green"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Colors"),
          backgroundColor: const Color(0xff79359F),
        ),
        body: ListView.builder(
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
