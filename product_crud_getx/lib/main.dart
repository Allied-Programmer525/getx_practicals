import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:product_crud_getx/app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx Demo",
      initialRoute: '/home',
      getPages: AppPages.routes,
    );
  }
}
