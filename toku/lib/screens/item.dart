// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:toku/screens/calssnum.dart';

class item extends StatelessWidget {
  const item({
    Key? key,
    required this.num,
    required this.color,
  }) : super(key: key);
  final classall num;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return num.img == null
        ? Container(
            color: color,
            height: 85,
            child: Row(
              
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  // child: Image.asset(num.img!),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        num.namet,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(num.nameen,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: IconButton(
                      onPressed: () {
                        // AudioCache player = AudioCache(prefix: 'assets/sounds/');
                        // player.loadedFiles(player.)
                      },
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    ))
              ],
            ),
          )
        : Container(
            color: color,
            height: 85,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(num.img!),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        num.namet,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(num.nameen,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const Spacer(flex: 1),
                Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: IconButton(
                      onPressed: () {
                        // AudioCache player = AudioCache(prefix: 'assets/sounds/');
                        // player.loadedFiles(player.)
                      },
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    ))
              ],
            ),
          );
  }
}
