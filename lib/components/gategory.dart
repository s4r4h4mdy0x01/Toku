import 'package:flutter/material.dart';

class Gategory extends StatelessWidget {
  Gategory({this.text, this.color ,this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        color: color,
        height: 70,
        width: double.infinity,
        child: Text(
          text!,
          style:const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );//
  }
}
