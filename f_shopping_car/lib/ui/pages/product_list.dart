import 'package:f_shopping_car/ui/pages/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product listing'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              Get.to(const ShoppingCart());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
              const Text('Milk'),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
              const Text('0'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
              const Text('Rice'),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
              const Text('0'),
            ],
          )
        ],
      ),
    );
  }
}
