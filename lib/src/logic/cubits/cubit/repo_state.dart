part of 'repo_cubit.dart';

sealed class RepoState extends Equatable {
  const RepoState();

  @override
  List<Object> get props => [];
}

final class RepoInitial extends RepoState {}

final class RepoLoading extends RepoState {}

final class RepoLoaded extends RepoState {
  final List<Animal> animals;

  const RepoLoaded(this.animals);
}

final class RepoError extends RepoState {
  final String message;

  const RepoError(this.message);
}
