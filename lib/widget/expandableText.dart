import 'package:flutter/material.dart';
import 'package:shopping/utils/appColors.dart';
import 'package:shopping/utils/dimension.dart';
import 'package:shopping/widget/smallText.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text ;
   ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf ;
  late String secondHalf ;

  bool hiddenText = true ;
  double textHeight = Dimensions.screenHeight/5.7;
  @override
  void initState(){
    super.initState();
    if(widget.text.length > textHeight){
      firstHalf= widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }
    else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty? SmallText(text: firstHalf,color: Colors.black87,):Column(
        children: [
          SmallText(text: hiddenText?( firstHalf + "..."):(firstHalf+secondHalf),color: Colors.black87,),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText ;
              });
            },
            child:Row(

              children: [
                SmallText( text: "Show more",color: AppColors().mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down : Icons.arrow_drop_up,color: AppColors().mainColor,size: 25,),
              ],
            ),
          )
        ],
      ) );
  }
}
