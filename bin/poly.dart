abstract class Employee {
  void doWork();
}

/// Компания жёстко привязана к конкретным классам работников
class Company implements Employee {
  final Designer designer;
  final Programmer programmer;
  final Tester tester;

  Company({
    required this.designer,
    required this.programmer,
    required this.tester,
  });

  @override
  void doWork() {
    final employees = [
      designer,
      programmer,
      tester,
    ];

    for (var employee in employees) {
      employee.doWork();
    }
  }
}

class Designer implements Employee {
  @override
  void doWork() {
    print('Разработка дизайна');
  }
}

class Programmer implements Employee {
  @override
  void doWork() {
    print('Написание кода');
  }
}

class Tester implements Employee {
  @override
  void doWork() {
    print('Тестирование');
  }
}

void main() {
  final company = Company(
    designer: Designer(),
    programmer: Programmer(),
    tester: Tester(),
  );

  company.doWork();
}
