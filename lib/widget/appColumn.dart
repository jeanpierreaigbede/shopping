import 'package:flutter/material.dart';
import 'package:shopping/utils/appColors.dart';
import 'package:shopping/widget/big_text.dart';
import 'package:shopping/widget/icon_and_text.dart';
import 'package:shopping/widget/smallText.dart';
class AppColumn extends StatelessWidget {
  final String text ;
  AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,color: Colors.black,),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star,color: AppColors().mainColor,size: 20,)),
            ),
            const SizedBox(width: 3,),
            SmallText(text: "4-5A"),
            const SizedBox(width: 3,),
            SmallText(text: "1258"),
            const SizedBox(width: 3,),
            SmallText(text: "Comments"),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp, text: 'Normal',  iconColor: AppColors().iconColor1),
            IconAndTextWidget(icon: Icons.location_on, text: '14.5km',  iconColor: AppColors().mainColor),
            IconAndTextWidget(icon: Icons.access_time_outlined, text: '32min',  iconColor: AppColors().iconColor2),
          ],
        )
      ],
    );
  }
}
