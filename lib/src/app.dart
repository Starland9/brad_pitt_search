import 'package:brad_pitt_search/src/logic/repos/repo.dart';
import 'package:brad_pitt_search/src/screens/search_animal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => Repo(),
      child: MaterialApp(
        home: SearchAnimalScreen(),
        theme: ThemeData.dark(useMaterial3: true),
      ),
    );
  }
}
