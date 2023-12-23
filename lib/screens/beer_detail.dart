import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_memorandum/bloc/beer_bloc.dart';
import 'package:prueba_memorandum/utils/snackbar.dart';
import 'package:prueba_memorandum/widgets/beer_detail_list.dart';

class BeerDetail extends StatefulWidget {
  final int id;
  const BeerDetail({super.key, required this.id});

  @override
  State<BeerDetail> createState() => _BeerDetailState();
}

class _BeerDetailState extends State<BeerDetail> {
  bool isLoading = false;
  List beer = [];

  @override
  void initState() {
    super.initState();
    fetchBeer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> fetchBeer() async {
    /*final cubit = context.read<BeerBloc>();
    cubit.fetchBeer(widget.id);*/
    final beerBloc = BlocProvider.of<BeerBloc>(context);
    beerBloc.add(GetBeerByIdEvent(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Beer Detail'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ),
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
            if (state is GetBeerByIdState) {
              final beer = state.beer;
              return BeerDetailList(beer: beer);
            }
            ;
            return Container();
          },
        ));
  }
}
