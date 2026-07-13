import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_crud_getx/app/modules/home_screen/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("P R O D U C T S")),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            final product = controller.products[index];
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(product.name),
                subtitle: Text("Rs. -${product.price}"),
                trailing: Icon(CupertinoIcons.arrow_right, color: Colors.green),
                onTap: () => controller.goToProductDetails(product),
              ),
            );
          },
        ),
      ),
    );
  }
}
