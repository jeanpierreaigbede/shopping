import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {

  Color color ;
  final String text ;
  double size ;
  double height ;
  SmallText({Key? key, required this.text,  this.color = const   Color(0xff3ccc74), this.size = 12,this.height = 1.2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto',
        height: height
      ),);
  }
}
