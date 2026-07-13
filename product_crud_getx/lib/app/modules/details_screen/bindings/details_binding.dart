import 'package:get/get.dart';
import 'package:product_crud_getx/app/modules/details_screen/controllers/details_controller.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}
