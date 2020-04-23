import 'dart:async';
import 'dart:convert';

import 'package:foodie_restaurant/config/appConstants.dart';
import 'package:http/http.dart' as http;


class HttpService {
  HttpService._internal();
  factory HttpService() {
    return _instance;
  }
  static final HttpService _instance = HttpService._internal();
  String _authToken;
  Map<String, String> _getRequestHeaders() {
    return {'Authorization': 'Bearer $_authToken'};
  }

  // Future<http.Response> _get(String endPoint) {
  //   String url = APIConstants.API_BASE_URL + endPoint;
  //   print("_get: $url");
  //   return http.get(url);
  // }

  // Future<http.Response> _post(
  //     String endPoint, Map<String, String> header, Map<String, dynamic> data) {
  //   String url = APIConstants.API_BASE_URL + endPoint;
  //   return http.post(url,
  //       headers: header, body: data, encoding: Encoding.getByName("utf-8"));
  // }

  // Map<String, dynamic> _convertJsonToMap(String response) {
  //   return json.decode(response);
  // }

  // Get Json Posts

  // Future<List<User>> getUsersPosts() async {
  //   String endpoint = "/posts";

  //   List<User> usersList;

  //   final http.Response response = await _get(endpoint);

  //   if (response.statusCode == 200) {
  //     print("response: ${response.body}");

  //     var json = jsonDecode(response.body);

  //     usersList = (json as List).map((model) => User.fromJson(model)).toList();
  //   } else {
  //     throw Exception("Failed to load post");
  //   }

  //   return usersList;
  // }
}
