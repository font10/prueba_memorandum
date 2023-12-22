import 'package:flutter/material.dart';
import 'package:prueba_memorandum/misc/colors.dart';

class BeerDetailVolumeInfo extends StatelessWidget {
  const BeerDetailVolumeInfo({
    super.key,
    required this.item,
  });

  final Map item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Volume',
                    style: TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    )),
                Text(
                    item['volume']['value'].toString() +
                        ' ' +
                        item['volume']['unit'].toString(),
                    style: const TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            const SizedBox(width: 70),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Boil Volume',
                    style: TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    )),
                Text(
                    item['boil_volume']['value'].toString() +
                        ' ' +
                        item['boil_volume']['unit'].toString(),
                    style: const TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            )
          ],
        ),
      ],
    );
  }
}
