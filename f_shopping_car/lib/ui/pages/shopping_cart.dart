import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShoppingController shoppingController = Get.find();
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping cart')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Milk'),
              Text(shoppingController.milkAmount.toString())
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Rice'),
              Text(shoppingController.riceAmount.toString())
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text('Pay'))
        ],
      ),
    );
  }
}
