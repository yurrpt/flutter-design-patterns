import 'package:flutter/material.dart';

@immutable
class Person {
  final String name;
  final String lastName;
  final int age;
  final String nation;
  final String email;
  const Person({
    required this.name,
    required this.lastName,
    required this.age,
    required this.nation,
    required this.email,
  });

  Person clone() => Person(name: name, lastName: lastName, age: age, nation: nation, email: email);

  Person copyWith({String? name, String? lastName, int? age, String? nation, String? email}) {
    return Person(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      nation: nation ?? this.nation,
      email: email ?? this.email,
    );
  }
}

Person person = const Person(name: 'Arda', lastName: '', age: 17, nation: 'TR', email: '');
Person person1 = person.clone();
