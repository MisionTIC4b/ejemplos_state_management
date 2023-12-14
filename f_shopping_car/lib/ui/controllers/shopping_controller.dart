import 'package:f_shopping_car/model/use_cases/shopping_cart_use_case.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

class ShoppingController extends GetxController {
  final _milkAmount = 0.obs;
  final _riceAmount = 0.obs;

  ShoppingCartUseCase shoppingCartUseCase = Get.find();

  int get milkAmount => _milkAmount.value;
  int get riceAmount => _riceAmount.value;

  void moreMilk() {
    _milkAmount.value = shoppingCartUseCase.moreMilk();
  }

  void lessMilk() {
    _milkAmount.value = shoppingCartUseCase.lessMilk();
  }

  void moreRice() {
    _riceAmount.value = shoppingCartUseCase.moreRice();
  }

  void lessRice() {
    _riceAmount.value = shoppingCartUseCase.lessRice();
  }
}
