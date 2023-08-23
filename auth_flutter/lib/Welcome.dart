
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100, top: 0),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                            fontFamily: 'Courgette',
                            color: Color(0xFF6737A7),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: SvgPicture.asset(
                          'assets/icons/chat.svg',
                          width: 350,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Text("LOGIN"),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF6737A7),
                            onPrimary: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Signup');
                        },
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(color: Color(0xFF6737A7)),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 199, 181, 223),
                          onPrimary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 95, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Image.asset(
                    'assets/images/main_top.png',
                    width: 100,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/images/main_bottom.png',
                    width: 80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
