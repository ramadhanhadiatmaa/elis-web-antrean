import 'package:elis_web_antrean/app/data/models/kamar_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<KamarModel>> fetchKamarData() async {
    var baseUrl = '${dotenv.env["BASE_URL_KAMAR"]}';
    var header = '${dotenv.env["BASE_HEADER"]}';
    var key = '${dotenv.env["BASE_KEY"]}';

    final url = '$baseUrl/api';
    final headers = {header: key};

    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      return kamarModelFromJson(response.body);
    } else {
      throw Exception("Network Error");
    }
  }
}