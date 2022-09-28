

import 'package:flutter/material.dart';
import 'package:shopping/utils/dimension.dart';
import 'package:shopping/widget/appColumn.dart';
import 'package:shopping/widget/appIcon.dart';
import 'package:shopping/widget/big_text.dart';
import 'package:shopping/widget/expandableText.dart';
import 'package:shopping/widget/icon_and_text.dart';

import '../utils/appColors.dart';
import '../widget/smallText.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularImageSize,
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/3.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              )),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.widtht20,
              right:Dimensions.widtht20 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back,backgroundColor: Colors.white,iconColor: Colors.black,),
                  AppIcon(icon: Icons.shopping_cart,backgroundColor: Colors.white,iconColor: Colors.black,)
                ],
              )
          ),
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularImageSize*0.95,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.height20, vertical:Dimensions.height20 ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.height20),topRight: Radius.circular(Dimensions.height20)),
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Biarini",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: 'Introduce',color: Colors.black,size: 25,),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget( text: "dfcvgbn,;:jjjjjjjjjjfyuzyzuyu'tzyuzrytivzitzyyyyyyertjsfydujhsyrftsiytcyfvtfysuufycvizyrfvzyefgcvtzefdxisefyvsiyfgvsydfscviserygvziurtieuyrttteurutyuetyviuezieuryzbiuery oeburgbeonritguenltgoeij rlhrtohp rh nrohu_obugbetigpekoy'y-àç-jv'utobveiyubpoyipujotpyjhpyujouyoeuiyuketpitgunoevivutnuoeityoireoitjnoveiyuiojyvneituoituoeutoictzoieuzcouithbvoirpsipviuteouioeuvypo dohibpirtgcosiurocpozeifvzpoeivpoezihvoituboriyuboigjvndoifgvnoitgvodifgjvns^povjeptouhveiorutbvtiubojlrkmekfggjtrrjjrjrhjehgkmpzreeeeeeeeeeeeefioiynveeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeedtjuetoieutvyeouitvoerutyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhmmmmmmmmmmmmmmmmmmmmmmmiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiihhhhhhhhhhhhhuovvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvoutbzeurytdbouzrtybozurtybvuzrtybvzurtjzhrtjtejfjsdgjegrejrthjeregbjzkjgzvbjzlefjwjdg",)))
                  ],
                )
              )
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: Dimensions.widtht15,right:Dimensions.widtht15,top: Dimensions.height10,bottom: Dimensions.height10 ),

        height: Dimensions.popularImageSize*0.3,
        decoration: BoxDecoration(
          color: AppColors().buttonBackgroundColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.height20*0.8),topLeft:Radius.circular(Dimensions.height20*0.8) ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //padding: EdgeInsets.only(left: Dimensions.widtht15,right:Dimensions.widtht15,top: Dimensions.height10,bottom: Dimensions.height10 ),
              width: Dimensions.screenwidth*0.34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(Dimensions.height20*0.8)),
                color: Colors.white
              ),
              child: Row(
                children: [
                  IconButton(onPressed: null, icon: Icon(Icons.remove,size: 20,color: Colors.black87,)),
                  SizedBox(width: 10,),
                  BigText(text: "0",color: Colors.black54,),
                  IconButton(onPressed: null, icon: Icon(Icons.add,size: 20,color: Colors.black87,)),
                ],
              ),
            ),
        Container(
          padding: EdgeInsets.only(left: Dimensions.widtht15*1.2,right:Dimensions.widtht15,top: Dimensions.height20,bottom: Dimensions.height20 ),
          width: Dimensions.screenwidth*0.5 ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(Dimensions.height20*0.8)),
              color: AppColors().mainColor
          ),
          child: BigText(text: "20\$ Add to Cart",color: Colors.white,),
        )
          ],
        ),
      ),
    );

  }
}
