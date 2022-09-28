
import 'package:flutter/material.dart';
import 'package:shopping/utils/dimension.dart';
class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor ;
  final Color iconColor;
  final double size ;
  AppIcon({Key? key, required this.icon, this.backgroundColor = const Color(0xfffcf452),this.iconColor = const Color(0xfff758a4), this.size = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(Dimensions.height20))
      ),
      child: Icon(icon,color: iconColor,),
    );
  }
}
