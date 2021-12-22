import 'package:get/instance_manager.dart';
import 'package:weather_app/src/ui/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'HaNoi'));
    Get.lazyPut(() => HomeController(lat: '21', lon: '105'));
  }
}
