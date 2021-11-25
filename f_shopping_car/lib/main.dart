import 'package:f_shopping_car/ui/pages/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import 'controllers/shopping_controller.dart';
import 'ui/my_app.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

  Get.put(ShoppingController());
  runApp(const MyApp());
}
