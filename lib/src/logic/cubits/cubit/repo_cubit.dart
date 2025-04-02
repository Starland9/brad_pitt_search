import 'package:bloc/bloc.dart';
import 'package:brad_pitt_search/src/logic/models/animal.dart';
import 'package:brad_pitt_search/src/logic/repos/repo.dart';
import 'package:equatable/equatable.dart';

part 'repo_state.dart';

class RepoCubit extends Cubit<RepoState> {
  final Repo _repo;
  RepoCubit(this._repo) : super(RepoInitial());

  Future<void> getAnimal(String name) async {
    emit(RepoLoading());
    try {
      final animals = await _repo.getAnimal(name);
      emit(RepoLoaded(animals));
    } catch (e) {
      emit(RepoError(e.toString()));
    }
  }
}
