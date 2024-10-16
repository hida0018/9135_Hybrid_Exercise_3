import 'dart:convert';
import '../lib/students.dart';

void main() {
  String json = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  // Convert JSON string to a list of maps with String keys/values
  List<Map<String, String>> peopleList = List<Map<String, String>>.from(
    (jsonDecode(json) as List).map((item) => Map<String, String>.from(item)),
  );

  Students students = Students(peopleList);

  // Output the list of people
  print('Original List:');
  students.output();

  // Sort the list by 'first' name
  print('\nSorted List by first name:');
  students.sort('first');
  students.output();

  // Add a new person to the list
  print('\nAdding a new person:');
  students.plus({
    "first": "Christian",
    "last": "Hidalgo",
    "email": "ChristianHidalgo@algonquincollege.com"
  });
  students.output();

  // Remove a person by 'first' name
  print('\nRemoving a person by first name (Tony):');
  students.remove('Tony');
  students.output();
}
