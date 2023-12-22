import 'package:flutter/widgets.dart';
import 'package:prueba_memorandum/misc/colors.dart';

class BeerDetailIngredientList extends StatelessWidget {
  final String title;
  final List items;

  const BeerDetailIngredientList(
      {super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.blueColor,
            ),
          ),
        ),
        const SizedBox(height: 8),
        if (items != null)
          Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  //Text(items[0]['name'].toString());
                  return Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index]['name'].toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            Text(items[index]['amount']['value'].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 13)),
                            const SizedBox(width: 3),
                            Text(items[index]['amount']['unit'].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 13))
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
      ],
    );
  }
}
