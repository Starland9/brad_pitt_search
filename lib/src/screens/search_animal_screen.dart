import 'package:brad_pitt_search/src/logic/cubits/cubit/repo_cubit.dart';
import 'package:brad_pitt_search/src/logic/repos/repo.dart';
import 'package:brad_pitt_search/src/screens/components/animal_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAnimalScreen extends StatelessWidget {
  const SearchAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => RepoCubit(context.read<Repo>())..getAnimal("cheetah"),
      child: Scaffold(
        appBar: AppBar(title: Text("Search Animal")),
        body: Column(
          children: [
            BlocBuilder<RepoCubit, RepoState>(
              builder: (context, state) {
                return CupertinoTextField(
                  keyboardType: TextInputType.webSearch,
                  onSubmitted:
                      (value) => context.read<RepoCubit>().getAnimal(value),
                  style: TextStyle(color: Colors.white),
                );
              },
            ),
            Expanded(
              child: BlocBuilder<RepoCubit, RepoState>(
                builder: (context, state) {
                  print(state);
                  if (state is RepoError) {
                    return Center(child: Text(state.message));
                  }
                  if (state is RepoLoaded) {
                    return ListView.builder(
                      itemCount: state.animals.length,
                      itemBuilder: (context, index) {
                        final animal = state.animals[index];

                        return AnimalItem(
                          key: ValueKey(animal.name),
                          animal: animal,
                        );
                      },
                    );
                  }
                  return Center(child: CircularProgressIndicator.adaptive());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
