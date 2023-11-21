import 'petrol_car.dart';

class PetrolCarImpl implements PetrolCar {
  @override
  void doBreak() {
    print('petrol car 2 can break');
  }

  @override
  void drive() {
    print('petrol car 2 can drive');
  }

  @override
  void fillPetrol() {
    print('petrol car 2 can fill petrol');
  }
}
