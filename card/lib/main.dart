import 'package:flutter/material.dart';

void main() {
  runApp(busniess_card_app());
}

class busniess_card_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 112,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('asset/tharwat.png'),
            ),
          ),
          Text(
            "Tharwat Samy",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontFamily: "Pacifico"),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
              color: Color(0xFF6C8090),
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "",
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 16,
            endIndent: 16,
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Color(0xFF2B475E),
              ),
              title: Text(
                '+059 123 4567 89',
                style: TextStyle(
                  color: Color(0xFF2B475E),
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.mail,
                color: Color(0xFF2B475E),
              ),
              title: Text(
                'moatasem2000@hotmail.com',
                style: TextStyle(
                  color: Color(0xFF2B475E),
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
