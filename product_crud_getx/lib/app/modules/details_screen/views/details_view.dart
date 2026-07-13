import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_crud_getx/app/modules/details_screen/controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("P R O D U C T   D E T A I L")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Text(
                      controller.product.name[0],
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Text(controller.product.name, style: TextStyle(fontSize: 30)),
                  Text(
                    controller.product.description,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    controller.product.price.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                  ElevatedButton(
                    onPressed: controller.goBack,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: Text("Go", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
