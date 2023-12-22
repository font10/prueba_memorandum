import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_memorandum/cubit/beer_state.dart';
import 'package:prueba_memorandum/repository/beer_repository.dart';

class BeerCubit extends Cubit<BeerState> {
  final BeerRepository _repository;
  BeerCubit(this._repository) : super(InitBeerState());

  Future<void> fetchBeer() async {
    emit(LoadingBeerState());
    try {
      final res = await _repository.getAllBeers();
      print(res);
      emit(ResponseBeerState(res));
    } catch (error) {
      emit(ErrorBeerState(error.toString()));
    }
  }
}
