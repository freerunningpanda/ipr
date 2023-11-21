/// Кот ест только сосиски

void main() {
  final sausage = Sausage(
    getColor: () => 'Оранжевая',
    getExpiration: () => '21.11.24',
    getNutrition: () => ('Б - 3.2г., Ж - 10г., У - 15г.'),
  );

  final fish = Fish(
    getColor: () => 'Жёлтая',
    getExpiration: () => '21.11.29',
    getNutrition: () => ('Б - 30.2г., Ж - 20г., У - 5г.'),
  );

  final cat = Cat(energy: 100, sausage: sausage);

  cat.eat();
}

class Cat {
  final int energy;
  final Sausage sausage;

  const Cat({
    required this.energy,
    required this.sausage,
  });

  void eat() {
    print('Съел сосиску ${sausage.getNutrition()} Энергия $energy');
  }

  @override
  String toString() {
    return 'съел $eat';
  }
}

class Sausage {
  final String Function() getNutrition;
  final String Function() getColor;
  final String Function() getExpiration;

  Sausage({
    required this.getNutrition,
    required this.getColor,
    required this.getExpiration,
  });

  @override
  String toString() {
    final nutrition = getNutrition();
    final color = getColor();
    final expiration = getExpiration();
    return '$nutrition $color $expiration';
  }
}

class Fish {
  final Function() getNutrition;
  final Function() getColor;
  final Function() getExpiration;

  Fish({
    required this.getNutrition,
    required this.getColor,
    required this.getExpiration,
  });

  @override
  String toString() {
    return '$getNutrition $getColor $getExpiration';
  }
}
