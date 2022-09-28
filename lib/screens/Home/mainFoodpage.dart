import 'package:flutter/material.dart';

import 'package:shopping/screens/Home/foodpage_body.dart';
import 'package:shopping/utils/appColors.dart';
import 'package:shopping/widget/big_text.dart';
import 'package:shopping/widget/smallText.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // showing header
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 45),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "NewYork",color: AppColors().mainColor,),
                      Row(

                        children: [
                          SmallText(text: "A good country",color: Colors.black54,),
                          const Icon(Icons.arrow_drop_down,)
                        ],
                      )
              ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: AppColors().mainColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:const Icon(Icons.search,color: Colors.white,),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15,),
          // showing body
           Expanded(
               child: SingleChildScrollView(
                   child: FoodPageBody())),
        ],
      ),
    );

      ;
  }
}
