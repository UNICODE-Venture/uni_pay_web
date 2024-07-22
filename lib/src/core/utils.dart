import 'dart:convert';

import 'package:http/http.dart' as http;

class Utils {
  Utils._();

  /// Convert the given [streamRes] to Map
  static Future<Map<String, dynamic>> toMap(http.StreamedResponse streamRes) async {
    final bytes = await streamRes.stream.toBytes();
    final String responseString = utf8.decode(bytes);
    final body = json.decode(responseString);
    return body;
  }
}
