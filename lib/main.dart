import 'package:flutter/material.dart';
import 'package:prueba_memorandum/bloc/beer_bloc.dart';
import 'package:prueba_memorandum/cubit/beer_cubit.dart';
import 'package:prueba_memorandum/repository/beer_repository.dart';
import 'package:prueba_memorandum/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BeerCubit(BeerRepository()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home(),
      ),
    );
  }
}

/*
BLOC

return RepositoryProvider(
        create: (context) => BeerRepository(),
        child: BlocProvider(
          create: (context) => BeerBloc(
              beerRepository: RepositoryProvider.of<BeerRepository>(context)),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const Home(),
          ),
        ));
  }
  */
