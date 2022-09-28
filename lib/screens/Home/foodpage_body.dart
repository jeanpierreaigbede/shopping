import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shopping/utils/appColors.dart';
import 'package:shopping/utils/dimension.dart';
import 'package:shopping/widget/appColumn.dart';
import 'package:shopping/widget/big_text.dart';
import 'package:shopping/widget/icon_and_text.dart';
import 'package:shopping/widget/smallText.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0 ;
  var _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState(){
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
    super.initState();
  }
  @override
  void dispose(){
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        // Slider
      Container(
      height:Dimensions.pageView,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context,position){
            return _buildPageItem(position);
          }),
    ),
     // DotIndicator
     DotsIndicator(
    dotsCount: 5,
    position: _currPageValue,
    decorator: DotsDecorator(
      activeColor: AppColors().mainColor,
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
        /*SmoothPageIndicator(
          controller: pageController, count: 5,
          onDotClicked: (index)=>pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut),
          effect: WormEffect(
            strokeWidth: 25,
            dotHeight: 10,
              dotWidth: 10,
              spacing: 10,
              dotColor: Colors.grey,
              activeDotColor: AppColors().mainColor,
          ),
        )*/
        SizedBox(height: Dimensions.height20,),
        // PopularText
        Container(
          margin: EdgeInsets.only(left: Dimensions.widtht10),
          child: Row(
            children: [
              BigText(text: "Popular",color: Colors.black,),
              SizedBox(width: Dimensions.widtht10,),
              Container(margin: const EdgeInsets.only(bottom: 10,right: 3), child: BigText(text: ".",color: Colors.grey,size: 20,)),

              SmallText(text: 'food  in time',color: Colors.grey,),
    ]
        ),),
              // list of food and image
                ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                      itemCount: 10,
                        itemBuilder: (context , index){
                          return Container(
                            margin:  EdgeInsets.only(left: Dimensions.widtht20,bottom:Dimensions.height20,right:Dimensions.widtht20 ),
                            child: Row(
                              children: [
                                // image
                                Container(
                                  height:Dimensions.listViewImageSize,
                                  width: Dimensions.listViewImageSize,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(Dimensions.height20)),
                                    color: Colors.white38,
                                    image:const  DecorationImage(
                                      image: AssetImage('images/5.jpg'),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                SizedBox(width: Dimensions.widtht15,),
                                // text container
                                Expanded(child: Container(
                                  height: Dimensions.listViewTextSize,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(Dimensions.widtht20),
                                      topLeft: Radius.circular(Dimensions.widtht20),
                                    )
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      BigText(text: 'Nutrition fruit meal in china',color: Colors.black,),
                                      SmallText(text: "With chinese characteristics",color: AppColors().mainColor,),
                                      Row(
                                        children: [
                                          IconAndTextWidget(icon: Icons.circle_sharp, text: 'Normal',  iconColor:AppColors().iconColor1),
                                          IconAndTextWidget(icon: Icons.location_on, text: '14.5km',  iconColor: AppColors().mainColor),
                                          IconAndTextWidget(icon: Icons.access_time_outlined, text: '32min',  iconColor: AppColors().iconColor2),
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          );
                    }),
      ],
    );

  }

  Widget _buildPageItem(position) {
    Matrix4 matrix = Matrix4.identity();
    if(position==_currPageValue.floor()){
      var currScale = 1 -(_currPageValue-position)*(1-_scaleFactor);
      var currTran = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTran, 0);
    }else if(position == _currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-position+1)*(1-_scaleFactor);
      var currTran = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTran, 0);
    }
    else if(position == _currPageValue.floor()-1){
      var currScale = 1 -(_currPageValue-position)*(1-_scaleFactor);
      var currTran = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTran, 0);
    }
    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor), 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
        Container(
        height: Dimensions.pageViewContainer,
       margin: EdgeInsets.all(Dimensions.height10),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(Dimensions.widtht15)),
            //color: Color(0xffc22da5),
            image: const DecorationImage(
                image: AssetImage("images/2.jpg"),
                fit: BoxFit.cover)
        ),

      ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.widtht30,bottom: Dimensions.widtht20,right: Dimensions.widtht20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.height10)),
                color: Colors.white,
                boxShadow:const [
                  BoxShadow(color: Color(0xFFe8e8e8),blurRadius: 5.0,offset: Offset(0, 5)),
                  BoxShadow(color: Colors.white,blurRadius: 5.0,offset: Offset(-5, 0)),
                  BoxShadow(color: Color(0xFFe8e8e8),blurRadius: 5.0,offset: Offset(5, 0)),
                ]
              ),
            child: Container(
              padding: const  EdgeInsets.only(top:15, left: 8,bottom: 15,right: 5),
              child: AppColumn(text: "Chinese food",),

            ) ,
            ),
          )
        ],
      ),
    );
  }
}
