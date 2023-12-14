import 'package:f_shopping_car/data/data_source/shopping_cart_data_source.dart';
import 'package:f_shopping_car/model/repositories/i_shopping_cart_repository.dart';
import 'package:f_shopping_car/model/use_cases/shopping_cart_use_case.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import 'data/repositories/shopping_cart_repository.dart';
import 'ui/controllers/shopping_controller.dart';
import 'ui/my_app.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

  Get.put(ShoppingCartDataSource());
  Get.put<IShoppingCartRepository>(ShoppingCartRepository(Get.find()));
  Get.put(ShoppingCartUseCase(Get.find()));
  Get.put(ShoppingController());
  runApp(const MyApp());
}
