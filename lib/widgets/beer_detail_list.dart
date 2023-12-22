import 'package:flutter/material.dart';
import 'package:prueba_memorandum/widgets/beer_detail_card_item.dart';

class BeerDetailList extends StatelessWidget {
  const BeerDetailList({
    super.key,
    required this.beer,
  });

  final List beer;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: beer.length,
      itemBuilder: (context, index) {
        final item = beer[index];
        return BeerDetailCardItem(item: item);
      },
    );
  }
}
