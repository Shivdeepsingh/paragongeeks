import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'constants.dart';

class NetworkUtil {
  // next three lines makes this class a Singleton
  static NetworkUtil _instance = new NetworkUtil.internal();
  NetworkUtil.internal();
  factory NetworkUtil() => _instance;

  Future<http.Response> get(String url,{Map<String, String> headers,}) {
    return http.get(Uri.parse( Constants.url + url),headers: headers).then((http.Response response) {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }

      return response;
    });
  }

  Future<http.Response> post(String url,
      {Map<String, String> headers, body, encoding}) {

    print(url);
    print(body);

    return http
        .post(Uri.parse(Constants.url +url),
            body: utf8.encode(json.encode(body)),
            headers: headers,
            encoding: encoding)
        .then((http.Response response) {
      if (response == null) {
        throw new Exception("Error while fetching data");
      }

      if (response.statusCode < 200 || response.statusCode > 400) {
        throw new Exception("Error while fetching data");
      }

      return response;
    }).catchError((error) {
      throw new Exception("Error " + error.toString());
    });
  }
}
