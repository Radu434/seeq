import 'dart:convert';

import 'package:http/http.dart';
import 'package:seeq/models/point.dart';

class NavigationService {
  static const String _apiKey = 'e8312011-252c-4fa8-b0f9-1fa09ff6ca83';
  static const String _mainAddress = 'https://graphhopper.com/api/1/';

  static Client httpClient = Client();

  static Future<Map<String, dynamic>> geoCode(String location) async {
    Response response = await httpClient.get(
      Uri.parse('${_mainAddress}geocode?q=$location&key=$_apiKey'),
      headers: {
        'Content-type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
      },
    );
    return jsonDecode(response.body);
  }

  static Future<Map<String, dynamic>> route(Point start, Point dest) async {
    Response response = await httpClient.get(
      Uri.parse(
          '${_mainAddress}route?point=${start.dataToString()}&point=${dest.dataToString()}&profile=foot&key=$_apiKey'),
      headers: {
        'Content-type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
      },
    );
    return jsonDecode(response.body);
  }
}
