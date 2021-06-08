import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/ui/pages/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }

}