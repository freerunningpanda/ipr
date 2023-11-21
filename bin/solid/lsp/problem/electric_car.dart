import 'car.dart';

class ElectricCar extends Car {
  @override
  void drive() {
    super.drive();
  }

  @override
  void doBreak() {
    super.doBreak();
  }

  @override
  void rechargeBattery() {
    super.rechargeBattery();
  }

  @override
  void fillGas() {
    print('Electric car doesnt have this function');
    super.fillGas();
  }
}
