import 'electric_car.dart';

void main(List<String> args) {
  final electricCar = ElectricCar();
  electricCar
    ..drive()
    ..doBreak()
    // Лишние методы
    ..fillGas()
    ..fillPetrol();
}
