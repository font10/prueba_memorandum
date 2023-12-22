import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:prueba_memorandum/repository/beer_repository.dart';

part 'beer_event.dart';
part 'beer_state.dart';

class BeerBloc extends Bloc<BeerEvent, BeerState> {
  final BeerRepository beerRepository;
  BeerBloc({required this.beerRepository}) : super(Initial()) {
    on<LoadJokeEvent>((event, emit) async {
      emit(Loading());
      try {
        final res = await beerRepository.getAllBeers();
        emit(GetAllBeersState(res as List));
      } catch (e) {
        emit(BeerError(e.toString()));
      }
    });
  }
}
