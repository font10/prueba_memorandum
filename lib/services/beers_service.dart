import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:prueba_memorandum/models/beer_model.dart';

class BeersService {
  static Future<List<BeerModel>> getAllBeersService() async {
    final List<BeerModel> beersList = [];
    try {
      const url =
          'https://api.punkapi.com/v2/beers?brewed_before=11-2012&abv_gt=6';
      final uri = Uri.parse(url);
      final res = await http.get(uri);
      final data = jsonDecode(res.body);

      if (res.statusCode == 200) {
        print('Si');
        data.map((post) => beersList.add(BeerModel.fromJson(post))).toList();
        print(beersList);
        return beersList;
      } else {
        return beersList;
      }
    } catch (error) {
      return beersList;
    }
  }

  static Future<List?> getBeerByIdService(int id) async {
    final List<BeerModel> beerList = [];
    try {
      final url = 'https://api.punkapi.com/v2/beers/$id';
      final uri = Uri.parse(url);
      final res = await http.get(uri);

      final data = jsonDecode(res.body);

      if (res.statusCode == 200) {
        data.map((post) => beerList.add(BeerModel.fromJson(post))).toList();
        return beerList;
      } else {
        return beerList;
      }
    } catch (error) {
      return beerList;
    }
  }
}
