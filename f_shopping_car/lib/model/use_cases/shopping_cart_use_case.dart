import 'package:f_shopping_car/model/repositories/i_shopping_cart_repository.dart';

class ShoppingCartUseCase {
  final IShoppingCartRepository _shoppingCartRepository;
  ShoppingCartUseCase(this._shoppingCartRepository);
  int moreMilk() {
    return _shoppingCartRepository.setMilk(true);
  }

  int lessMilk() {
    return _shoppingCartRepository.setMilk(false);
  }

  int moreRice() {
    return _shoppingCartRepository.setRice(true);
  }

  int lessRice() {
    return _shoppingCartRepository.setRice(false);
  }
}
