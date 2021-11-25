import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping cart')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [const Text('Milk'), Text('0')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [const Text('Rice'), Text('0')],
          ),
          ElevatedButton(onPressed: () {}, child: Text('Pay'))
        ],
      ),
    );
  }
}
