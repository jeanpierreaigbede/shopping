import 'package:flutter/material.dart';

class BigText extends StatelessWidget {

  Color color ;
  final String text ;
  final double height ;
  double size ;
  TextOverflow overflow ;
   BigText({Key? key, required this.text,  this.color = const   Color(0x0ff332d2), this.size = 20, this.overflow = TextOverflow.ellipsis, this.height = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      height: height,
      overflow: overflow,
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto'
    ),);
  }
}
