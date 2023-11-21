abstract class Attacker {
  void attack();
}

class Weapon implements Attacker {
  final double damage;
  final double range;

  Weapon({
    required this.damage,
    required this.range,
  });

  @override
  void attack() {}
}

class Sword extends Weapon {
  Sword({required super.damage, required super.range});

  @override
  void attack() {
    print('Удар мечом с уроном $damage');
    super.attack();
  }
}

class Crossbow extends Weapon {
  Crossbow({required super.damage, required super.range});

  @override
  void attack() {
    print('Выстрел из арбалета с уроном $damage');
    super.attack();
  }
}

class Knife extends Weapon {
  Knife({required super.damage, required super.range});

  @override
  void attack() {
    print('Удар ножом с уроном $damage');
    super.attack();
  }

}

class Character {
  final String name;
  Weapon weapon;

  Character({required this.name, required this.weapon});

  void changeWeapon(Weapon weapon) {
    this.weapon = weapon;
  }

  void attack() => weapon.attack();
}

void main(List<String> args) {
  final sword = Sword(damage: 15, range: 2);
  final character = Character(name: 'Warrior', weapon: sword);
  character.attack();

  final crossbow = Crossbow(damage: 40, range: 100);
  character.changeWeapon(crossbow);
  character.attack();
  final knife = Knife(damage: 5, range: 1);
  character.changeWeapon(knife);
  character.attack();
}
