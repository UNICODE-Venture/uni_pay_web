import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:uni_pay_web/src/core/apis.dart';

class HttpFactory {
  static final HttpFactory _instance = HttpFactory._internal();

  /// Http Client
  final http.Client client;

  factory HttpFactory() {
    return _instance;
  }

  HttpFactory._internal() : client = http.Client();

  /// GET Method --------------------------------
  Future<http.Response> get(
    String endPoint, {
    Map<String, String>? headers,
    Map<String, String>? params,
  }) async {
    String url = '${Apis.moyasarUrl}$endPoint';
    Uri uri = params != null ? Uri.parse(url).replace(queryParameters: params) : Uri.parse(url);
    _logRequest('GET', url, params, headers);
    final response = await client.get(uri, headers: headers);
    _logResponse(response);
    return response;
  }

  /// POST Method --------------------------------
  Future<http.Response> post(
    String endPoint, {
    Map<String, String>? headers,
    Map<String, String>? params,
    Map<String, dynamic>? body,
  }) async {
    String url = '${Apis.moyasarUrl}$endPoint';
    Uri uri = params != null ? Uri.parse(url).replace(queryParameters: params) : Uri.parse(url);
    _logRequest('POST', url, headers, params, body);
    final response = await client.post(uri, headers: headers, body: body);
    _logResponse(response);
    return response;
  }

  /// PUT Method --------------------------------
  Future<http.Response> put(
    String endPoint, {
    Map<String, String>? headers,
    Map<String, String>? params,
    Map<String, dynamic>? body,
  }) async {
    String url = '${Apis.moyasarUrl}$endPoint';
    Uri uri = params != null ? Uri.parse(url).replace(queryParameters: params) : Uri.parse(url);
    _logRequest('PUT', url, headers, params, body);
    final response = await client.put(uri, headers: headers, body: body);
    _logResponse(response);
    return response;
  }

  /// DELETE Method --------------------------------
  Future<http.Response> delete(
    String endPoint, {
    Map<String, String>? headers,
    Map<String, String>? params,
  }) async {
    String url = '${Apis.moyasarUrl}$endPoint';
    Uri uri = params != null ? Uri.parse(url).replace(queryParameters: params) : Uri.parse(url);
    _logRequest('DELETE', url, headers, params);
    final response = await client.delete(uri, headers: headers);
    _logResponse(response);
    return response;
  }

  /// Method to log request and response ---------------------
  void _logRequest(
    String method,
    String url,
    Map<String, String>? headers,
    Map<String, String>? params, [
    Map<String, dynamic>? body,
  ]) {
    print('Request: $method $url');
    if (headers != null) {
      print('Headers: ${jsonEncode(headers)}');
    }
    if (params != null) {
      print('Params: ${jsonEncode(params)}');
    }
    if (body != null) {
      print('Body: ${jsonEncode(body)}');
    }
  }

  /// Method to log response ---------------------
  void _logResponse(http.Response response) {
    final body = jsonDecode(response.body);
    print('Response: ${response.statusCode}');
    print(body);
  }
}
