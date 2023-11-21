import 'electric_car.dart';

class ElectricCarImpl implements ElectricCar {
  @override
  void doBreak() {
    print('electric car 2 can break');
  }

  @override
  void drive() {
    print('electric car 2 can drive');
  }

  @override
  void rechargeBattery() {
    print('electric car 2 can recharge the battery');
  }
}
