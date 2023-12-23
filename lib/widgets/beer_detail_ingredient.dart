import 'package:flutter/widgets.dart';
import 'package:prueba_memorandum/models/beer_model.dart';
import 'package:prueba_memorandum/widgets/beer_detail_ingredient_list.dart';
import 'package:prueba_memorandum/widgets/beer_detail_ingredients_yeast_list.dart';

class BeerDetailIngredients extends StatelessWidget {
  final BeerModel item;
  const BeerDetailIngredients({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    print(item);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*BeerDetailIngredientList(title: 'Malt', items: item.ingrendients!),
            BeerDetailIngredientList(
                title: 'Hops', items: item.ingrendients!.hops!),
            const SizedBox(height: 9),
            BeerDetailIngredientYeastList(yeast: item.ingrendients!.yeast!),*/
          ],
        ),
      ),
    );
  }
}
