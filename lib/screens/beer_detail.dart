import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_memorandum/cubit/beer_cubit.dart';
import 'package:prueba_memorandum/cubit/beer_state.dart';
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
    final cubit = context.read<BeerCubit>();
    cubit.fetchBeer(widget.id);
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
        body: BlocBuilder<BeerCubit, BeerState>(
          builder: (context, state) {
            if (state is LoadingBeerState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is ErrorBeerState) {
              showMessage(context, 'Error', Colors.red);
            }
            if (state is ResponseBeerByIdState) {
              final beer = state.beer;
              return BeerDetailList(beer: beer);
            }
            ;
            return Container();
          },
        ));
  }
}
