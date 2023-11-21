/// Создаётся только один экземпляр класса
void main() {
  final sausage = Sausage();

  final fish = Fish();

  final cat = Cat(energy: 100, food: fish);
  final catTwo = Cat(energy: 100, food: sausage);
  final catThree = Cat(energy: 150, food: sausage);

  cat.eat();
  catTwo.eat();
  catThree.eat();
}

abstract class Food {
  final String Function() getNutrition;
  final String Function() getColor;
  final String Function() getExpiration;

  Food(
      {required this.getNutrition,
      required this.getColor,
      required this.getExpiration});
}

class Cat {
  final int energy;
  final Food food;

  const Cat._({
    required this.energy,
    required this.food,
  });

  static Cat? _instance;

  factory Cat({
    required int energy,
    required Food food,
  }) {
    _instance ??= Cat._(energy: energy, food: food);
    return _instance!;
  }

  void eat() {
    print('Съел: ${food.getNutrition()} Энергия $energy');
  }

  @override
  String toString() {
    return 'съел $eat';
  }
}

class Sausage implements Food {
  @override
  String Function() get getColor => () => 'Оранжевая';

  @override
  String Function() get getExpiration => () => '21.11.24';

  @override
  String Function() get getNutrition =>
      () => 'cосиска - (Б: 3.2г., Ж: 10г., У: 15г.)';

  @override
  String toString() {
    final nutrition = getNutrition();
    final color = getColor();
    final expiration = getExpiration();
    return '$nutrition $color $expiration';
  }
}

class Fish implements Food {
  @override
  String Function() get getColor => () => 'Оранжевая';

  @override
  String Function() get getExpiration => () => '21.11.24';

  @override
  String Function() get getNutrition =>
      () => 'рыба - (Б: 30.2г., Ж: 20г., У: 5г.)';

  @override
  String toString() {
    final nutrition = getNutrition();
    final color = getColor();
    final expiration = getExpiration();
    return '$nutrition $color $expiration';
  }
}
