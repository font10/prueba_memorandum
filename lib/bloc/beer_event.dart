part of 'beer_bloc.dart';

abstract class BeerEvent extends Equatable {
  @override
  List<Object> get props => [];
}

//* When the user signing in with email and password this event is called and the [AuthRepository] is called to sign in the user
class SignInRequested extends BeerEvent {
  final String email;
  final String password;

  SignInRequested(this.email, this.password);
}

//* When the user signing up with email and password this event is called and the [AuthRepository] is called to sign up the user
class getAllBeers extends BeerEvent {
  SignUpRequested();
}

//* When the user signing in with google this event is called and the [AuthRepository] is called to sign in the user
class GoogleSignInRequested extends BeerEvent {}

//* When the user signing out this event is called and the [AuthRepository] is called to sign out the user
class SignOutRequested extends BeerEvent {}
