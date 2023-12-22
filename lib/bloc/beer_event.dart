part of 'beer_bloc.dart';

abstract class BeerEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetAllBeersEvent extends BeerEvent {
  GetAllBeersEvent(this.beers);
  final List beers;

  @override
  List<Object> get props => [beers];
}
