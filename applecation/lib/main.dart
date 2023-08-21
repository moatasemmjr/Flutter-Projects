import 'package:flutter/material.dart';

void main() {
  runApp(imag());
}

class basketball_counter_app extends StatefulWidget {
  @override
  State<basketball_counter_app> createState() => _basketball_counter_appState();
}

class _basketball_counter_appState extends State<basketball_counter_app> {
  int point_A = 0;

  int point_B = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("basketball_counter_app"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      '$point_A',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          point_A++;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: const Text(
                        'Add 1 point ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          point_A = point_A + 2;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: const Text(
                        'Add 2 point ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          point_A = point_A + 3;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: const Text(
                        'Add 3 point ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      "$point_B",
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          point_B++;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: const Text(
                        'Add 1 point ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          point_B = point_B + 2;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: const Text(
                        'Add 2 point ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          point_B = point_B + 3;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      child: const Text(
                        'Add 3 point ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    point_B = 0;
                    point_A = 0;
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ])
          ],
        ),

        // ------------------------------------------------
      ),
    );
  }
}

class imag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Image(
          image: AssetImage("img/im.png"),
        ),
      ),
    );
  }
}

class test2 extends StatelessWidget {
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
            color: const Color.fromARGB(136, 120, 170, 27),
          ),
          Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(136, 0, 0, 0),
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
