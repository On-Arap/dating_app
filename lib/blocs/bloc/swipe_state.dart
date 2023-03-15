part of 'swipe_bloc.dart';

abstract class SwipeState extends Equatable {
  final List<User> users;

  const SwipeState({
    required this.users,
  });

  @override
  List<Object> get props => [];
}

class SwipeLoading extends SwipeState {
  const SwipeLoading({required super.users});
}

class SwipeLoaded extends SwipeState {
  const SwipeLoaded({required super.users});

  Iterable get getUser => users;

  @override
  List<Object> get props => [users];
}

class SwipeError extends SwipeState {
  const SwipeError({required super.users});
}
