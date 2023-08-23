// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:toku/screens/item.dart';
import 'calssnum.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<classall> num = const [
    classall(
        img: 'assets/images/numbers/number_one.png',
        namet: "ichi",
        nameen: "one"),
    classall(
        img: 'assets/images/numbers/number_two.png',
        namet: "Ni",
        nameen: "tow"),
    classall(
        img: 'assets/images/numbers/number_three.png',
        namet: "San",
        nameen: "three"),
    classall(
        img: 'assets/images/numbers/number_four.png',
        namet: "Shi",
        nameen: "four"),
    classall(
        img: 'assets/images/numbers/number_five.png',
        namet: "Go",
        nameen: "five"),
    classall(
        img: 'assets/images/numbers/number_six.png',
        namet: "Roku",
        nameen: "six"),
    classall(
        img: 'assets/images/numbers/number_seven.png',
        namet: "Sebun",
        nameen: "seven"),
    classall(
        img: 'assets/images/numbers/number_eight.png',
        namet: "hachi",
        nameen: "eight"),
    classall(
        img: 'assets/images/numbers/number_nine.png',
        namet: "Kyū",
        nameen: "nine"),
    classall(
        img: 'assets/images/numbers/number_ten.png',
        namet: "Jū",
        nameen: "ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers"),
          backgroundColor: const Color(0xffEF9235),
        ),
        body: ListView.builder(
          itemCount: num.length,
          itemBuilder: (context, index) {
            return item(
              num: num[index],
              color: const Color(0xffEF9235),
            );
          },
        )

        // (children: [
        //   Column(
        //     children: [
        //       item(num: num[0]),
        //       item(num: num[1]),
        //       item(num: num[2]),
        //       item(num: num[3]),
        //       item(num: num[4]),
        //       item(num: num[5]),
        //       item(num: num[6]),
        //       item(num: num[7]),
        //       item(num: num[8]),
        //       item(num: num[9]),
        //     ],
        //   ),
        // ]
        );
  }
}
