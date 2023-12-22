import 'package:flutter/material.dart';
import 'package:prueba_memorandum/misc/colors.dart';

class BeerBaseInfo extends StatelessWidget {
  const BeerBaseInfo({
    super.key,
    required this.item,
  });

  final Map item;

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
                backgroundImage: NetworkImage(item['image_url']), //NetworkImage
                radius: 100,
              ), //CircleAvatar
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(item['name'],
                    style: const TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    )),
                Text(item['tagline'],
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Text(item['description'],
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ))
      ],
    );
  }
}
