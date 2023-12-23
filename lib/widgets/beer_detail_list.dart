import 'package:flutter/material.dart';
import 'package:prueba_memorandum/widgets/beer_detail_card_item.dart';
import 'package:prueba_memorandum/models/beer_model.dart';

class BeerDetailList extends StatelessWidget {
  final List<BeerModel> beer;
  const BeerDetailList({
    super.key,
    required this.beer,
  });

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
