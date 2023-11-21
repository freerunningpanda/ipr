import 'battery.dart';
import 'gas.dart';
import 'petrol.dart';

abstract class Car {
  void drive();
  void doBreak();
}

class PetrolCar extends Car implements Petrol {
  @override
  void doBreak() {
    print('petrol car can break');
  }

  @override
  void drive() {
    print('petrol car can drive');
  }

  @override
  void fillPetrol() {
    print('petrol car can fill petrol');
  }
}

class ElectricCar extends Car implements Battery {
  @override
  void doBreak() {
    print('electric car can break');
  }

  @override
  void drive() {
    print('electric car can drive');
  }

  @override
  void rechargeBattery() {
    print('electric car can recharge the battery');
  }
}

class GasCar extends Car implements Gas {
  @override
  void doBreak() {
    print('gas car can break');
  }

  @override
  void drive() {
    print('gas car can drive');
  }

  @override
  void fillGas() {
    print('gas car can fill gas');
  }
}
