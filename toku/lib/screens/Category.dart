import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(this.text, this.color, this.onTap);
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding:  const EdgeInsetsDirectional.only(start: 20),
        color: color!, 
        child:   Text(
          text!,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        height: 70,
        width: double.infinity,
      ),
    );
  }
}
