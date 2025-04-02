import 'package:brad_pitt_search/src/logic/models/animal.dart';
import 'package:flutter/material.dart';

class CheetahDetailsScreen extends StatelessWidget {
  final Animal cheetah;

  const CheetahDetailsScreen({super.key, required this.cheetah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cheetah.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(cheetah.name, style: TextStyle(fontSize: 24)),
              SizedBox(height: 16),
              Text('Taxonomy:', style: TextStyle(fontSize: 18)),
              Text('Kingdom: ${cheetah.taxonomy.kingdom}'),
              Text('Phylum: ${cheetah.taxonomy.phylum}'),
              Text('Class: ${cheetah.taxonomy.class_}'),
              Text('Order: ${cheetah.taxonomy.order}'),
              Text('Family: ${cheetah.taxonomy.family}'),
              Text('Genus: ${cheetah.taxonomy.genus}'),
              Text('Scientific Name: ${cheetah.taxonomy.scientificName}'),
              SizedBox(height: 16),
              Text('Locations:', style: TextStyle(fontSize: 18)),
              Text(cheetah.locations.join(', ')),
              SizedBox(height: 16),
              Text('Characteristics:', style: TextStyle(fontSize: 18)),
              Text('Prey: ${cheetah.characteristics.prey}'),
              Text('Name of Young: ${cheetah.characteristics.nameOfYoung}'),
              Text('Group Behavior: ${cheetah.characteristics.groupBehavior}'),
              Text(
                'Estimated Population Size: ${cheetah.characteristics.estimatedPopulationSize}',
              ),
              Text('Biggest Threat: ${cheetah.characteristics.biggestThreat}'),
              Text(
                'Most Distinctive Feature: ${cheetah.characteristics.mostDistinctiveFeature}',
              ),
              Text(
                'Gestation Period: ${cheetah.characteristics.gestationPeriod}',
              ),
              Text('Habitat: ${cheetah.characteristics.habitat}'),
              Text('Diet: ${cheetah.characteristics.diet}'),
              Text(
                'Average Litter Size: ${cheetah.characteristics.averageLitterSize}',
              ),
              Text('Lifestyle: ${cheetah.characteristics.lifestyle}'),
              Text('Common Name: ${cheetah.characteristics.commonName}'),
              Text(
                'Number of Species: ${cheetah.characteristics.numberOfSpecies}',
              ),
              Text('Location: ${cheetah.characteristics.location}'),
              Text('Slogan: ${cheetah.characteristics.slogan}'),
              Text('Group: ${cheetah.characteristics.group}'),
              Text('Color: ${cheetah.characteristics.color}'),
              Text('Skin Type: ${cheetah.characteristics.skinType}'),
              Text('Top Speed: ${cheetah.characteristics.topSpeed}'),
              Text('Lifespan: ${cheetah.characteristics.lifespan}'),
              Text('Weight: ${cheetah.characteristics.weight}'),
              Text('Height: ${cheetah.characteristics.height}'),
              Text(
                'Age of Sexual Maturity: ${cheetah.characteristics.ageOfSexualMaturity}',
              ),
              Text('Age of Weaning: ${cheetah.characteristics.ageOfWeaning}'),
            ],
          ),
        ),
      ),
    );
  }
}
