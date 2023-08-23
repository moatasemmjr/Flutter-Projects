import 'package:flutter/material.dart';
import 'package:auth_flutter/Welcome.dart';
import 'package:auth_flutter/Login.dart';
import 'package:auth_flutter/Signup.dart';

void main() {
  runApp(const auth());
}

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/Login': (context) => Login(),
        '/Signup': (context) => Signup()
      },
    );
  }
}
