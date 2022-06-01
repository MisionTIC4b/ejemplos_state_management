import 'package:f_shopping_car/ui/pages/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShoppingController shoppingController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product listing'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              Get.to(() => const ShoppingCart());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () => shoppingController.lessMilk(),
                  icon: const Icon(Icons.arrow_back)),
              const Text('Milk'),
              IconButton(
                  onPressed: () => shoppingController.moreMilk(),
                  icon: const Icon(Icons.arrow_forward)),
              Obx(() => Text('${shoppingController.milkAmount}')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () => shoppingController.lessRice(),
                  icon: const Icon(Icons.arrow_back)),
              const Text('Rice'),
              IconButton(
                  onPressed: () => shoppingController.moreRice(),
                  icon: const Icon(Icons.arrow_forward)),
              Obx(() => Text(shoppingController.riceAmount.toString())),
            ],
          )
        ],
      ),
    );
  }
}
