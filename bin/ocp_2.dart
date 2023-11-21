class Person {
  final String fullname;

  Person({required this.fullname});
}

class PersonList {
  final List<Person> persons;

  PersonList({required this.persons});

  void sort() {
    if (persons.length < 10) {
      BubbleSort.sort(persons);
    } else if (persons.length < 1000) {
      MergeSort.sort(persons);
    } else {
      QuickSort.sort(persons);
    }
  }
}

class BubbleSort {
  static List sort(List<dynamic> array) => array;
}

class QuickSort {
  static List sort(List<dynamic> array) => array;
}

class MergeSort {
  static List sort(List<dynamic> array) => array;
}

class Music {}

class MusicList {
  final List<Music> musics;

  MusicList({required this.musics});

  void sort() {
    if (musics.length < 10) {
      BubbleSort.sort(musics);
    } else if (musics.length < 1000) {
      MergeSort.sort(musics);
    } else {
      QuickSort.sort(musics);
    }
  }
}

// В двух местах продублировали условие
