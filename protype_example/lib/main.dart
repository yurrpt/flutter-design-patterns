import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'protype_one.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Person person = const Person(name: 'Arda', lastName: 'I.', age: 17, nation: 'TR', email: '');
    Person person1 = person.clone();

    if (kDebugMode) {
      print('${person.name} \n ${person1.name}');
    }

    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Flutter Design Pattern.',
    );
  }
}
