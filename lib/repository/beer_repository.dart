import 'package:prueba_memorandum/services/beers_service.dart';

class BeerRepository {
  Future<List> getAllBeers() async {
    try {
      final res = await BeersService.getAllBeersService();
      return res as List;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
