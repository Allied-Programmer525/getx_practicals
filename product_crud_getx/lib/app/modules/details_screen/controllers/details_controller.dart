import 'package:get/get.dart';
import 'package:product_crud_getx/app/data/models/product.dart';

class DetailsController extends GetxController {
  late Product product;

  @override
  void onInit() {
    super.onInit();
    product = Get.arguments as Product;
  }

  void goBack() {
    Get.back();
  }
}
