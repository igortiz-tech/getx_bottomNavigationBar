import 'package:get/get.dart';
import 'package:getx_bottom_navigation/pages/add/add_controller.dart';
import 'package:getx_bottom_navigation/pages/dashboard/dashboard_controler.dart';
import 'package:getx_bottom_navigation/pages/home/home_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => AddController());

  }

}