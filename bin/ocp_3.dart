// Проблема:

// Для добавления новых методов доставки нужно менять код в классе

// class Order {
//   final Shipping shipping;

//   Order(this.shipping);

//   void getShippingCost() {
//     if (shipping.type == 'ground') {
//       print('ground shipping');
//     } else if (shipping.type == 'air') {
//       print('air shipping');
//     }
//   }
// }

// class Shipping {
//   final String type;

//   Shipping({required this.type});
// }

// Решение:

class Order {
  final Shipping shipping;

  Order(this.shipping);
}

abstract class Shipping {
  void getCost(Order order);
  void getDate(Order order);
}

class Ground implements Shipping {
  @override
  void getCost(Order order) {
    print('ground shipping 10 dollars');
  }

  @override
  void getDate(Order order) {
    // TODO: implement getDate
  }
}

class Air implements Shipping {
  @override
  void getCost(Order order) {
    print('air shipping 100 dollars');
  }

  @override
  void getDate(Order order) {
    // TODO: implement getDate
  }
}

class Courier extends Shipping {
  @override
  void getCost(Order order) {
    print('courier shipping 1 dollar');
  }

  @override
  void getDate(Order order) {
    // TODO: implement getDate
  }

}


void main(List<String> args) {
  final order = Order(Air());
  order.shipping.getCost(order);

  final order2 = Order(Ground());
  order2.shipping.getCost(order);

  final order3 = Order(Courier());
  order3.shipping.getCost(order);
}