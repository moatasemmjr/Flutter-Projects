import 'package:flutter/material.dart';
import 'package:toku/screens/calssnum.dart';
import 'package:toku/screens/item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<classall> num = const [
    classall(
        img: 'assets/images/family_members/family_father.png',
        namet: "Chichioya",
        nameen: "father"),
    classall(
        img: 'assets/images/family_members/family_daughter.png',
        namet: "Musume",
        nameen: "Grand Father"),
    classall(
        img: 'assets/images/family_members/family_grandfather.png',
        namet: "Hahaoya",
        nameen: "Grand Father"),
    classall(
        img: 'assets/images/family_members/family_mother.png',
        namet: "Shi",
        nameen: "four"),
    classall(
        img: 'assets/images/family_members/family_grandmother.png',
        namet: "Go",
        nameen: "five"),
    classall(
        img: 'assets/images/family_members/family_older_brother.png',
        namet: "Roku",
        nameen: "six"),
    classall(
        img: 'assets/images/family_members/family_older_sister.png',
        namet: "Sebun",
        nameen: "seven"),
    classall(
        img: 'assets/images/family_members/family_younger_brother.png',
        namet: "hachi",
        nameen: "eight"),
    classall(
        img: 'assets/images/family_members/family_younger_sister.png',
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
          title: const Text("Family Members"),
          backgroundColor: const Color(0xff558B37),
        ),
        body: ListView.builder(
          itemCount: num.length,
          itemBuilder: (context, index) {
            return item(
              num: num[index],
              color: const Color(0xff558B37),
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
