import 'package:get/get.dart';
import 'package:product_crud_getx/app/data/models/product.dart';

class HomeController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  void loadProducts() {
    products.value = [
      Product(
        id: 1,
        name: "iPhone",
        description: "Latest IPhone",
        price: 9999.33,
      ),
      Product(
        id: 2,
        name: "Samsung S24",
        description: "Latest Samsung Phone",
        price: 9999.33,
      ),
      Product(
        id: 3,
        name: "One Plus 12",
        description: "Latest OnePlus",
        price: 9999.33,
      ),
    ];
  }

  void goToProductDetails(Product product) {
    Get.toNamed('/product-details', arguments: product);
  }
}
