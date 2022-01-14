import 'package:get/get.dart';

class DashboardController extends GetxController{

  var tabinIndex = 0;

  void chancheTabIndex(int index){
    tabinIndex=index;
    update();
  }
}