import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_memorandum/cubit/beer_state.dart';
import 'package:prueba_memorandum/repository/beer_repository.dart';

class BeerCubit extends Cubit<BeerState> {
  final BeerRepository _repository;
  BeerCubit(this._repository) : super(InitBeerState());

  Future<void> fetchBeers() async {
    emit(LoadingBeerState());
    try {
      final res = await _repository.getAllBeers();
      emit(ResponseBeerState(res));
    } catch (error) {
      emit(ErrorBeerState(error.toString()));
    }
  }

  Future<void> fetchBeer(int id) async {
    emit(LoadingBeerState());
    try {
      final res = await _repository.getBeerById(id);
      print(res);
      emit(ResponseBeerByIdState(res));
    } catch (error) {
      emit(ErrorBeerState(error.toString()));
    }
  }
}
