import 'dart:convert';

class Students {
  // Member field: List to hold a list of maps
  List<Map<String, String>> people;

  // Constructor that accepts a List<Map<String, String>> and assigns it to the people field
  Students(this.people);

  // Method to output each item in the list
  void output() {
    for (var person in people) {
      print(person);
    }
  }

  // Method to sort the list based on a specific field
  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  // Method to add a new person (map) to the list
  void plus(Map<String, String> person) {
    people.add(person);
  }

  // Method to remove a person based on the 'first' name field
  void remove(String field) {
    people.removeWhere((person) => person['first'] == field);
  }
}
