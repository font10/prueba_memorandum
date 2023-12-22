abstract class BeerState {}

class InitBeerState extends BeerState {}

class LoadingBeerState extends BeerState {}

class ErrorBeerState extends BeerState {
  final String message;
  ErrorBeerState(this.message);
}

class ResponseBeerState extends BeerState {
  final List<dynamic> beers;
  ResponseBeerState(this.beers);
}
