abstract class Employee {
  void doWork();
}

// Теперь код независим от других классов
abstract class Company implements Employee {
  List<Employee> getEmployees();

  @override
  void doWork() {
    final employees = getEmployees();

    for (final employee in employees) {
      employee.doWork();
    }
  }
}

class GameDevCompany extends Company {
  @override
  List<Employee> getEmployees() => [
        Designer(),
        Artist(),
      ];
}

class OutsourcingCompany extends Company {
  @override
  List<Employee> getEmployees() => [
        Programmer(),
        Tester(),
      ];
}

class Artist implements Employee {
  @override
  void doWork() {
    print('Актёрская работа');
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
  final gameDevCompany = GameDevCompany();
  final outsourcingCompany = OutsourcingCompany();
  gameDevCompany.doWork();
  outsourcingCompany.doWork();
}
