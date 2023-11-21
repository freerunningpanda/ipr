import 'gas_car.dart';

class GasCarImpl implements GasCar {
  @override
  void doBreak() {
    print('gas car 2 can break');
  }

  @override
  void drive() {
     print('gas car 2 can drive');
  }

  @override
  void fillGas() {
    print('gas car 2 can fill gas');
  }
}
