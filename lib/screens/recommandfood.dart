import 'package:flutter/material.dart';
import 'package:shopping/widget/expandableText.dart';

import '../widget/appIcon.dart';
class RecommandedFoodDetail extends StatelessWidget {
  const RecommandedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
    slivers: [
      SliverAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(icon: Icons.arrow_back,backgroundColor: Colors.white,iconColor: Colors.black,),
            AppIcon(icon: Icons.shopping_cart,backgroundColor: Colors.white,iconColor: Colors.black,)
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/5.jpg",),
                  fit: BoxFit.cover,
              )
            ),
          ),
        ),
      expandedHeight: 300,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset("images/5.jpg",
            fit: BoxFit.cover,
           width: double.maxFinite,),
      ),
      ),
      SliverToBoxAdapter(
        child: Container(child: ExpandableTextWidget(text:"dfcvgbncvgbn,;:jjjjjjjjjjfyuzyzuyu'tzyuzrytivzitzyyyyyyertjsfydujhsyrftsiytcyfvtfysuufycvizyrfvzyecvgbn,;:jjjjjjjjjjfyuzyzuyu'tzyuzrytivzitzyyyyyyertjsfydujhsyrftsiytcyfvtfysuufycvizyrfvzyecvgbn,;:jjjjjjjjjjfyuzyzuyu'tzyuzrytivzitzyyyyyyertjsfydujhsyrftsiytcyfvtfysuufycvizyrfvzyecvgbn,;:jjjjjjjjjjfyuzyzuyu'tzyuzrytivzitzyyyyyyertjsfydujhsyrftsiytcyfvtfysuufycvizyrfvzyecvgbn,;:jjjjjjjjjjfyuzyzuyu'tzyuzrytivzitzyyyyyyertjsfydujhsyrftsiytcyfvtfysuufycvizyrfvzye,;:jjjjjjjjjjfyuzyzuyu'tzyuzrytivzitzyyyyyyertjsfydujhsyrftsiytcyfvtfysuufycvizyrfvzyefgcvtzefdxisefyvsiyfgvsydfscviserygvziurtieuyrttteurutyuetyviuezieuryzbiuery oeburgbeonritguenltgoeij rlhrtohp rh nrohu_obugbetigpekoy'y-àç-jv'utobveiyubpoyipujotpyjhpyujouyoeuiyuketpitgunoevivutnuoeityoireoitjnoveiyuiojyvneituoituoeutoictzoieuzcouithbvoirpsipviuteouioeuvypo dohibpirtgcosiurocpozeifvzpoeivpoezihvoituboriyuboigjvndoifgvnoitgvodifgjvns^povjeptouhveiorutbvtiubojlrkmekfggjtrrjjrjrhjehgkmpzreeeeeeeeeeeeefioiynveeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeedtjuetoieutvyeouitvoerutyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhmmmmmmmmmmmmmmmmmmmmmmmiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiihhhhhhhhhhhhhuovvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvoutbzeurytdbouzrtybozurtybvuzrtybvzurtjzhrtjtejfjsdgjegrejrthjeregbjzkjgzvbjzlefjwjdg"))
      )
  ],
    ),
    );
  }
}
