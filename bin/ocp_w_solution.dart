class Person {
  final String fullname;

  Person({required this.fullname});
}

class PersonList {
  final List<Person> persons;

  PersonList({required this.persons});

  void sort() {
    SortClient().sort(persons);
  }
}

class SortClient implements Sort {
  @override
  List sort(List array) {
    if (array.length < 10) {
      return BubbleSort().sort(array);
    } else if (array.length < 1000) {
      return MergeSort().sort(array);
    } else {
      return QuickSort().sort(array);
    }
  }
}

abstract class Sort {
  List sort(List<dynamic> array) => array;
}

class BubbleSort implements Sort {
  @override
  List sort(List array) {
    // TODO: implement sort
    throw UnimplementedError();
  }
}

class QuickSort implements Sort {
  @override
  List sort(List array) {
    // TODO: implement sort
    throw UnimplementedError();
  }
}

class MergeSort implements Sort {
  @override
  List sort(List array) {
    // TODO: implement sort
    throw UnimplementedError();
  }
}

class Music {}

class MusicList implements SortClient {
  final List<Music> musics;

  MusicList({required this.musics});

  @override
  List sort(List array) => array;
}
