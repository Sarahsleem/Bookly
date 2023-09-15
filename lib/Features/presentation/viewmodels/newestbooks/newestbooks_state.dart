part of 'newestbooks_cubit.dart';

class NewestbooksState extends Equatable {
  final LoadStatus loadDataStatus;

  const NewestbooksState({
    this.loadDataStatus = LoadStatus.initial,
  });

  @override
  List<Object?> get props => [
        loadDataStatus,
      ];

  NewestbooksState copyWith({
    LoadStatus? loadDataStatus,
  }) {
    return NewestbooksState(
      loadDataStatus: loadDataStatus ?? this.loadDataStatus,
    );
  }
}
