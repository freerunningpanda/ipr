import 'car.dart';
import 'electric_car_impl.dart';
import 'gas_car_impl.dart';
import 'petrol_car_impl.dart';

void main(List<String> args) {
  final petrolCar = PetrolCar();
  petrolCar
    ..drive()
    ..doBreak()
    ..fillPetrol();

  print('***' * 10);

  final electricCar = ElectricCar();
  electricCar
    ..drive()
    ..doBreak()
    ..rechargeBattery();

  print('***' * 10);

  final gasCar = GasCarImpl();
  
  gasCar
    ..drive()
    ..doBreak()
    ..fillGas();
  final petrolCar2 = PetrolCarImpl();
  petrolCar2
    ..drive()
    ..doBreak()
    ..fillPetrol();

  print('***' * 10);

  final electricCar2 = ElectricCarImpl();
  electricCar2
    ..drive()
    ..doBreak()
    ..rechargeBattery();

  print('***' * 10);

  final gasCar2 = GasCar();
  gasCar2
    ..drive()
    ..doBreak()
    ..fillGas();

  
}
