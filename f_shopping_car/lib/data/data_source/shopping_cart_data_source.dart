class ShoppingCartDataSource {
  int _milk = 0;
  int _rice = 0;

  int get milk => _milk;

  int get rice => _rice;

  int setMilk(bool increase) {
    if (increase) {
      _milk = _milk + 1;
    } else {
      if (_milk > 0) {
        _milk = _milk - 1;
      }
    }
    return _milk;
  }

  int setRice(bool increase) {
    if (increase) {
      _rice = _rice + 1;
    } else {
      if (_rice > 0) {
        _rice = _rice - 1;
      }
    }
    return _rice;
  }
}
