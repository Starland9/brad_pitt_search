import 'package:brad_pitt_search/src/logic/models/animal.dart';
import 'package:dio/dio.dart';

class Repo {
  String apiUrl(String name) =>
      "https://api.api-ninjas.com/v1/animals?name=$name";

  Future<List<Animal>> getAnimal(String name) async {
    try {
      final dio = Dio();
      final response = await dio.get(apiUrl(name));

      if (response.statusCode == 200) {
        return (response.data as List).map((e) => Animal.fromJson(e)).toList();
      }

      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}
