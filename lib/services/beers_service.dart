import 'dart:convert';
import 'package:http/http.dart' as http;

class BeersService {
  static Future<List?> getAllBeersService() async {
    try {
      const url =
          'https://api.punkapi.com/v2/beers?brewed_before=11-2012&abv_gt=6';
      final uri = Uri.parse(url);
      final res = await http.get(uri);
      if (res.statusCode == 200) {
        final result = jsonDecode(res.body);
        return result;
      } else {
        return [];
      }
    } catch (error) {
      return [];
    }
  }

  static Future<List?> getBeerByIdService(int id) async {
    try {
      final url = 'https://api.punkapi.com/v2/beers/$id';
      final uri = Uri.parse(url);
      final res = await http.get(uri);

      if (res.statusCode == 200) {
        final result = jsonDecode(res.body);
        return result;
      } else {
        return [];
      }
    } catch (error) {
      return [];
    }
  }
}
