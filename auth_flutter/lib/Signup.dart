import 'package:auth_flutter/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                        padding: const EdgeInsets.only(bottom: 30, top: 0),
                        child: Text(
                          "Signup",
                          style: TextStyle(
                              fontFamily: 'Courgette',
                              color: Color(0xFF6737A7),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: SvgPicture.asset(
                          'assets/icons/signup.svg',
                          width: 250,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 299,
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Color(0xFF6737A7),
                                    ),
                                    // hintText: 'email@hotmail.com',
                                    labelText: 'email@hotmail.com',
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 214, 194, 240),
                                    border: OutlineInputBorder(),
                                    hoverColor: Color(0xFF6737A7),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0.01,
                                            color: Color.fromARGB(
                                                255, 212, 189, 241)),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0.2,
                                            color: Color(0xFF6737A7)),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    labelStyle:
                                        TextStyle(color: Color(0xFF6737A7))),
                                style: TextStyle(
                                  color: Color(
                                      0xFF6737A7), // Adjust the color as needed
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 299,
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 2, top: 6),
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Color(0xFF6737A7),
                                      ),
                                      hintText: "Your password",
                                      labelText: 'password',
                                      filled: true,
                                      fillColor:
                                          Color.fromARGB(255, 214, 194, 240),
                                      border: OutlineInputBorder(),
                                      hoverColor: Color(0xFF6737A7),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 0.01,
                                              color: Color.fromARGB(
                                                  255, 212, 189, 241)),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 0.2,
                                              color: Color(0xFF6737A7)),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      labelStyle:
                                          TextStyle(color: Color(0xFF6737A7))),
                                  style: TextStyle(
                                    color: Color(
                                        0xFF6737A7), // Adjust the color as needed
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("SIGNUP"),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF6737A7),
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 125, vertical: 13),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(55),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Login()), // Replace with your SignUpPage
                            );
                          },
                          child: Text(
                            "Already Have an Account ? Loign in ",
                            style: TextStyle(
                                color: Color(0xFF6737A7),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 299,
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            )),
                            Text(
                              "OR",
                              style: TextStyle(
                                color: Colors.purple[900],
                              ),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

//
//

                Positioned(
                  left: 0,
                  child: Image.asset(
                    'assets/images/signup_top.png',
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
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 27),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xFF6737A7), width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              color: Color(0xFF6737A7),
                              height: 27,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xFF6737A7), width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              color: Color(0xFF6737A7),
                              height: 27,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xFF6737A7), width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              color: Color(0xFF6737A7),
                              height: 27,
                            ),
                          ),
                        ),
                      ],
                    ),
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
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
