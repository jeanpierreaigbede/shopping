import 'package:get/get.dart';
class Dimensions {
  static double screenHeight = Get.context!.height ;
  static double screenwidth = Get.context!.width;

  static double pageView = screenHeight/2.64;
  static double pageViewContainer = screenHeight/3.84;
  static double pageViewTextContainer = screenHeight/7.03;

  // width and margin
  static double widtht10 = screenwidth/84.4 ;
  static double widtht15 = screenwidth/40.4 ;
  static double widtht20 = screenwidth/60.4 ;
  static double widtht30 = screenwidth/50.4 ;
  static double widtht45 = screenwidth/40.4 ;

  // height and padding
  static double height10 = screenHeight/84.4 ;
  static double height25 = screenHeight/56.24 ;
  static double height30 = screenHeight/50.4 ;
  static double height5 = screenHeight/70 ;
  static double height20 = screenHeight/42.4 ;
  static double height45 = screenHeight/20 ;

  // icon size
  static double iconSize20 = screenHeight/54.4;

  // size for listView

static double listViewImageSize = screenwidth/3.23;
static double listViewTextSize = screenwidth/3.23;
//popular food detail

  static double popularImageSize = screenHeight/2.9 ;
}