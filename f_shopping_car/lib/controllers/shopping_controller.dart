import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

class ShoppingController extends GetxController {
  var _milkAmount = 0.obs;
  var _riceAmount = 0.obs;

  int get milkAmount => _milkAmount.value;
  int get riceAmount => _riceAmount.value;

  moreMilk() {
    _milkAmount.value = _milkAmount.value + 1;
    logInfo('moreMilk ${_milkAmount.value}');
  }

  lessMilk() {
    if (_milkAmount.value > 0) {
      _milkAmount.value = _milkAmount.value - 1;
    }
    logInfo('lessMilk ${_milkAmount.value}');
  }

  moreRice() {
    _riceAmount.value = _riceAmount.value + 1;
  }

  lessRice() {
    if (_riceAmount.value > 0) {
      _riceAmount.value = _riceAmount.value - 1;
    }
  }
}
