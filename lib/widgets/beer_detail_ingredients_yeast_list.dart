import 'package:flutter/widgets.dart';
import 'package:prueba_memorandum/misc/colors.dart';

class BeerDetailIngredientYeastList extends StatelessWidget {
  final String yeast;
  const BeerDetailIngredientYeastList({super.key, required this.yeast});

  @override
  Widget build(BuildContext context) {
    return yeast != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Yeast',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blueColor),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(yeast),
              ),
            ],
          )
        : Container();
  }
}
