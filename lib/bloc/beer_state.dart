part of 'beer_bloc.dart';

@immutable
abstract class BeerState extends Equatable {}

class Loading extends BeerState {
  @override
  List<Object?> get props => [];
}

class Initial extends BeerState {
  @override
  List<Object?> get props => [];
}

class GetAllBeersState extends BeerState {
  final List<BeerModel> beers;
  GetAllBeersState(this.beers);

  @override
  List get props => [beers];
}

class GetBeerByIdState extends BeerState {
  final List<BeerModel> beer;
  GetBeerByIdState(this.beer);

  @override
  List get props => [beer];
}

class BeerError extends BeerState {
  final String error;

  BeerError(this.error);
  @override
  List<Object?> get props => [error];
}
