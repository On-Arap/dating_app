import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../repositories/database/database_repository.dart';
part './images_event.dart';
part './images_state.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final DatabaseRepository _databaseRepository;
  StreamSubscription? _databaseSubscription;

  ImagesBloc({required DatabaseRepository databaseRepository})
      : _databaseRepository = databaseRepository,
        super(
          ImagesLoading(),
        ) {
    on<LoadImages>(_mapLoadImagesToState);
    on<UpdateImages>(_mapUpdateImagesToState);
  }

  Stream<ImagesState> _mapLoadImagesToState(LoadImages event, Emitter<ImagesState> emit) async* {
    print("Test");
    _databaseSubscription?.cancel();

    _databaseRepository.getUser().listen((user) {
      print(user);
      emit(ImagesLoaded(imageUrls: user.imageUrls));
      print(user);
      add(
        UpdateImages(user.imageUrls),
      );
      print(user);
    });
  }

  Stream<ImagesState> _mapUpdateImagesToState(UpdateImages event, Emitter<ImagesState> emit) async* {
    emit(ImagesLoaded(imageUrls: event.imageUrls));
  }
}
