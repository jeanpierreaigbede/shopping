import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/screens/Home/mainFoodpage.dart';
import 'package:shopping/screens/popular_food_detail.dart';
import 'package:shopping/screens/recommandfood.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecommandedFoodDetail(),
    );
  }
}
