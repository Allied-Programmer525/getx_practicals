import 'package:get/get.dart';
import 'package:product_crud_getx/app/modules/home_screen/controllers/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
