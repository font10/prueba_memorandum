import 'package:flutter/material.dart';
import 'package:prueba_memorandum/misc/colors.dart';
import 'package:prueba_memorandum/models/beer_model.dart';

class BeerBaseInfo extends StatelessWidget {
  final BeerModel item;
  const BeerBaseInfo({
    super.key,
    required this.item,
  });

  // TODO Por falta de tiempo no he podido extrar los estilos en otro archivo par que sea mucho más limpio.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl!), //NetworkImage
                radius: 100,
              ), //CircleAvatar
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(item.name!,
                      style: const TextStyle(
                        color: AppColors.blueColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400,
                      )),
                  Text(item.tagline!,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: AppColors.textColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(item.description!,
              style: const TextStyle(
                color: AppColors.textColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
              )),
        )
      ],
    );
  }
}
