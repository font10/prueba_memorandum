import 'package:flutter/material.dart';
import 'package:prueba_memorandum/widgets/beer_detail_base_info.dart';
import 'package:prueba_memorandum/widgets/beer_detail_volume_info.dart';

class BeerDetailCardItem extends StatelessWidget {
  const BeerDetailCardItem({
    super.key,
    required this.item,
  });

  final Map item;

  @override
  Widget build(BuildContext context) {
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
  }
}
