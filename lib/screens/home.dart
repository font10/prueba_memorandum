import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_memorandum/bloc/beer_bloc.dart';
//import 'package:prueba_memorandum/cubit/beer_cubit.dart';
import 'package:prueba_memorandum/screens/beer_detail.dart';
import 'package:prueba_memorandum/utils/snackbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = true;
  List beers = [];

  @override
  void initState() {
    super.initState();
    fetchTodo();
  }

  Future<void> fetchTodo() async {
    /*final cubit = context.read<BeerCubit>();
    cubit.fetchBeers();*/
    final beerBloc = BlocProvider.of<BeerBloc>(context);
    beerBloc.add(GetAllBeersEvent());
  }

  void navigateBeerDetail(int id) async {
    final route = MaterialPageRoute(builder: (context) => BeerDetail(id: id));
    await Navigator.push(context, route);

    fetchTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beers App')),
      body: BlocBuilder<BeerBloc, BeerState>(
        builder: (context, state) {
          if (state is Initial || state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is BeerError) {
            showMessage(context, 'Error', Colors.red);
          }
          if (state is GetAllBeersState) {
            final beers = state.beers;
            return ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: beers.length,
                itemBuilder: (context, index) {
                  final beer = beers[index];
                  return InkWell(
                    onTap: () => navigateBeerDetail(beer['id']),
                    child: Card(
                      elevation: 0,
                      child: ListTile(
                        title: Text(beer['tagline']),
                        subtitle: Text(beer['description'].substring(0, 40)),
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(beer['image_url']),
                        ),
                      ),
                    ),
                  );
                });
          }
          ;

          return Container();
        },
      ),
    );
  }
}
