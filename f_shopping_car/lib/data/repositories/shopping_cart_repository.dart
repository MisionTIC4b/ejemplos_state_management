import 'package:f_shopping_car/model/repositories/i_shopping_cart_repository.dart';

import '../data_source/shopping_cart_data_source.dart';

class ShoppingCartRepository extends IShoppingCartRepository {
  final ShoppingCartDataSource shoppingCartDataSource;
  ShoppingCartRepository(this.shoppingCartDataSource);

  @override
  int getMilk() => shoppingCartDataSource.milk;

  @override
  int getRice() => shoppingCartDataSource.rice;

  @override
  int setMilk(bool increase) => shoppingCartDataSource.setMilk(increase);

  @override
  int setRice(bool increase) => shoppingCartDataSource.setRice(increase);
}
