import 'package:flutter/material.dart';
import 'package:prueba_memorandum/misc/colors.dart';
import 'package:prueba_memorandum/models/beer_model.dart';

class BeerDetailVolumeInfo extends StatelessWidget {
  const BeerDetailVolumeInfo({
    super.key,
    required this.item,
  });

  final BeerModel item;

  // TODO Por falta de tiempo no he podido extrar los estilos en otro archivo par que sea mucho más limpio.

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
                    item.volume!.value!.toString() +
                        ' ' +
                        item.volume!.unit!.toString(),
                    style: const TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            const SizedBox(width: 30),
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
                    item.boilVolume!.value!.toString() +
                        ' ' +
                        item.boilVolume!.unit!.toString(),
                    style: const TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Fermentation',
                    style: TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    )),
                Text(
                    item.method!.fermentation!.temp!.value!.toString() +
                        ' ' +
                        item.method!.fermentation!.temp!.unit!.toString(),
                    style: const TextStyle(
                      color: AppColors.blueDarkColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
