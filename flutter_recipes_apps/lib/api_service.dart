import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future getData() async {
    var baseUrl =
        'https://www.themealdb.com/api/json/v1/1/filter.php?a=malaysian'; //endpoint
    var response = await http.get(Uri.parse(baseUrl)); //getresponse

    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      return data['meals']; //kembalian berupa data
    } else {
      throw Exception('Gagal mengambil data dari server');
    }
  }

  Future getDetail(String id) async {
    var baseUrl =
        'https://www.themealdb.com/api/json/v1/1/lookup.php?i=${id}'; //endpoint
    var response = await http.get(Uri.parse(baseUrl)); //getresponse

    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      return data['meals']; //kembalian berupa data
    } else {
      throw Exception('Gagal mengambil data dari server');
    }
  }
}
