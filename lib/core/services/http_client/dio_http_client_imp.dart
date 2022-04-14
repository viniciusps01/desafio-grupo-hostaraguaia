import 'dart:convert';

import 'package:desafio_grupo_hostaraguaia/core/services/http_client/http_client.dart';
import 'package:dio/dio.dart';

class DioHttpClientImp implements HttpClient {
  @override
  Future<String> get(String baseUrl, {Map<String, dynamic>? params}) async {
    try {
      var response = await Dio().get(baseUrl, queryParameters: params);
      return jsonEncode(response.data);
    } catch (e) {
      //TODO: handle properly
      rethrow;
    }
  }
}
