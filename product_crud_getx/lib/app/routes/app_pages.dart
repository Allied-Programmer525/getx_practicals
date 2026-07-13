import 'package:get/get.dart';
import 'package:product_crud_getx/app/modules/details_screen/bindings/details_binding.dart';
import 'package:product_crud_getx/app/modules/details_screen/views/details_view.dart';
import 'package:product_crud_getx/app/modules/home_screen/bindings/home_bindings.dart';
import 'package:product_crud_getx/app/modules/home_screen/views/home_view.dart';

class AppPages {
  static final routes = [
    GetPage(name: '/home', page: () => HomeView(), binding: HomeBindings()),
    GetPage(
      name: '/product-details',
      page: () => DetailsView(),
      binding: DetailsBinding(),
    ),
  ];
}
