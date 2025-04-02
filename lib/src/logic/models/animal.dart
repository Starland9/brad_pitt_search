class Animal {
  final String name;
  final Taxonomy taxonomy;
  final List<String> locations;
  final Characteristics characteristics;

  Animal({
    required this.name,
    required this.taxonomy,
    required this.locations,
    required this.characteristics,
  });

  factory Animal.fromJson(Map<String, dynamic> json) {
    return Animal(
      name: json['name'],
      taxonomy: Taxonomy.fromJson(json['taxonomy']),
      locations: List<String>.from(json['locations']),
      characteristics: Characteristics.fromJson(json['characteristics']),
    );
  }
}

class Taxonomy {
  final String kingdom;
  final String phylum;
  final String class_;
  final String order;
  final String family;
  final String genus;
  final String scientificName;

  Taxonomy({
    required this.kingdom,
    required this.phylum,
    required this.class_,
    required this.order,
    required this.family,
    required this.genus,
    required this.scientificName,
  });

  factory Taxonomy.fromJson(Map<String, dynamic> json) {
    return Taxonomy(
      kingdom: json['kingdom'],
      phylum: json['phylum'],
      class_: json['class'],
      order: json['order'],
      family: json['family'],
      genus: json['genus'],
      scientificName: json['scientific_name'],
    );
  }
}

class Characteristics {
  final String prey;
  final String nameOfYoung;
  final String groupBehavior;
  final String estimatedPopulationSize;
  final String biggestThreat;
  final String mostDistinctiveFeature;
  final String gestationPeriod;
  final String habitat;
  final String diet;
  final String averageLitterSize;
  final String lifestyle;
  final String commonName;
  final String numberOfSpecies;
  final String location;
  final String slogan;
  final String group;
  final String color;
  final String skinType;
  final String topSpeed;
  final String lifespan;
  final String weight;
  final String height;
  final String ageOfSexualMaturity;
  final String ageOfWeaning;

  Characteristics({
    required this.prey,
    required this.nameOfYoung,
    required this.groupBehavior,
    required this.estimatedPopulationSize,
    required this.biggestThreat,
    required this.mostDistinctiveFeature,
    required this.gestationPeriod,
    required this.habitat,
    required this.diet,
    required this.averageLitterSize,
    required this.lifestyle,
    required this.commonName,
    required this.numberOfSpecies,
    required this.location,
    required this.slogan,
    required this.group,
    required this.color,
    required this.skinType,
    required this.topSpeed,
    required this.lifespan,
    required this.weight,
    required this.height,
    required this.ageOfSexualMaturity,
    required this.ageOfWeaning,
  });

  factory Characteristics.fromJson(Map<String, dynamic> json) {
    return Characteristics(
      prey: json['prey'],
      nameOfYoung: json['name_of_young'],
      groupBehavior: json['group_behavior'],
      estimatedPopulationSize: json['estimated_population_size'],
      biggestThreat: json['biggest_threat'],
      mostDistinctiveFeature: json['most_distinctive_feature'],
      gestationPeriod: json['gestation_period'],
      habitat: json['habitat'],
      diet: json['diet'],
      averageLitterSize: json['average_litter_size'],
      lifestyle: json['lifestyle'],
      commonName: json['common_name'],
      numberOfSpecies: json['number_of_species'],
      location: json['location'],
      slogan: json['slogan'],
      group: json['group'],
      color: json['color'],
      skinType: json['skin_type'],
      topSpeed: json['top_speed'],
      lifespan: json['lifespan'],
      weight: json['weight'],
      height: json['height'],
      ageOfSexualMaturity: json['age_of_sexual_maturity'],
      ageOfWeaning: json['age_of_weaning'],
    );
  }
}
