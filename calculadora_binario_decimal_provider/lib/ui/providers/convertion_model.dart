import 'package:demo_app/domain/use_case/converter_use_case.dart';
import 'package:flutter/foundation.dart';

class ConvertionModel extends ChangeNotifier {
  final ConverterUseCase converterUseCase;

  ConvertionModel(this.converterUseCase);

  String _decimal = "0", _binary = "0";

  String get decimal => _decimal;

  String get binary => _binary;

  void reset() {
    _decimal = "0";
    _binary = "0";
    notifyListeners();
  }

  void updateBinary(int digit) {
    _binary = converterUseCase.adjustValue(_binary, digit);
    _decimal = converterUseCase.bin2dec(_binary);
    notifyListeners();
  }

  void updateDecimal(int digit) {
    _decimal = converterUseCase.adjustValue(_decimal, digit);
    _binary = converterUseCase.dec2bin(_decimal);
    notifyListeners();
  }
}
