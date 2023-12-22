import 'package:flutter/material.dart';
import 'package:prueba_memorandum/widgets/beer_card_item.dart';

class BeerList extends StatelessWidget {
  const BeerList({
    super.key,
    required this.beers,
  });

  final List beers;

  // TODO Me falto tiempo, pero deberia tener un modelo acorde a la respuesta de la API

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: beers.length,
        itemBuilder: (context, index) {
          final beer = beers[index];
          return BeerCardItem(beer: beer);
        });
  }
}
