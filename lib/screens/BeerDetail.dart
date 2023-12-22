import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:prueba_memorandum/bloc/beer_bloc.dart';
import 'package:prueba_memorandum/cubit/beer_cubit.dart';
import 'package:prueba_memorandum/cubit/beer_state.dart';
import 'package:prueba_memorandum/misc/colors.dart';
import 'package:prueba_memorandum/services/beers_service.dart';
import 'package:prueba_memorandum/utils/snackbar.dart';
import 'package:prueba_memorandum/widgets/beer_detail_base_info.dart';
import 'package:prueba_memorandum/widgets/beer_detail_volume_info.dart';

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
    print(widget.id);
    fetchBeer();
  }

  Future<void> fetchBeer() async {
    final cubit = context.read<BeerCubit>();
    cubit.fetchBeer(widget.id);
    /*setState(() {
      isLoading = true;
    });
    final res = await BeersService.getBeerByIdService(widget.id);

    setState(() {
      beer = res as List;
      isLoading = false;
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Beer Detail')),
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
              return ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: beer.length,
                itemBuilder: (context, index) {
                  final item = beer[index];
                  return Card(
                      elevation: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BeerBaseInfo(item: item),
                          const SizedBox(height: 30),
                          BeerDetailVolumeInfo(item: item),
                          const SizedBox(height: 30),
                        ],
                      ));
                },
              );
            }
            ;
            return Container();
          },
        ));
  }
}
