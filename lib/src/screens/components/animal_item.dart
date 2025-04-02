import 'package:brad_pitt_search/src/logic/models/animal.dart';
import 'package:flutter/material.dart';

class AnimalItem extends StatelessWidget {
  const AnimalItem({super.key, required this.animal});

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(animal.name));
  }
}
