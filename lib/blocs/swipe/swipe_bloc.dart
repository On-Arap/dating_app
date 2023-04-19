import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';

part './swipe_event.dart';
part './swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(const SwipeLoading(users: [])) {
    on<LoadUsersEvent>(_mapLoadUsersToState);
    on<SwipeLeftEvent>(_mapSwipeLeftToState);
    on<SwipeRightEvent>(_mapSwipeRightToState);
  }

  void _mapLoadUsersToState(LoadUsersEvent event, Emitter<SwipeState> emit) {
    emit(SwipeLoaded(users: event.users));
  }

  void _mapSwipeLeftToState(SwipeLeftEvent event, Emitter<SwipeState> emit) {
    emit(SwipeLoaded(users: List.from(state.users)..remove(event.user)));
  }

  void _mapSwipeRightToState(SwipeRightEvent event, Emitter<SwipeState> emit) {
    emit(SwipeLoaded(users: List.from(state.users)..remove(event.user)));
  }
}
