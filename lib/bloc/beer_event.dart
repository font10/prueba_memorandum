part of 'beer_bloc.dart';

abstract class BeerEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetAllBeersEvent extends BeerEvent {
  List<Object> get props => [];
}

class GetBeerByIdEvent extends BeerEvent {
  final int id;
  GetBeerByIdEvent({required this.id});

  List<Object> get props => [];
}
