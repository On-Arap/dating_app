import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../repositories/database/database_repository.dart';
part './images_event.dart';
part './images_state.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final DatabaseRepository _databaseRepository;

  ImagesBloc({required DatabaseRepository databaseRepository})
      : _databaseRepository = databaseRepository,
        super(
          ImagesLoading(),
        ) {
    on<LoadImages>(
      (event, emit) {
        _databaseRepository.getUser().listen((user) {
          print('Debug line : getUser Worked');
          emit(ImagesLoaded(imageUrls: user.imageUrls));
          add(UpdateImages(user.imageUrls));
        });
      },
    );
    on<UpdateImages>(
      (event, emit) {
        emit(ImagesLoaded(imageUrls: event.imageUrls));
      },
    );
  }

  @override
  void onTransition(Transition<ImagesEvent, ImagesState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  void _mapLoadImagesToState(LoadImages event, Emitter<ImagesState> emit) {
    // fix this with the bloc.dev
  }

  void _mapUpdateImagesToState(UpdateImages event, Emitter<ImagesState> emit) {}
}
