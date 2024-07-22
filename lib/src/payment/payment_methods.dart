import 'dart:convert';
import 'package:uni_pay_web/src/core/apis.dart';
import 'package:uni_pay_web/src/core/http_factory.dart';
import 'package:uni_pay_web/src/payment/models/payments_res.dart';

class PaymentMethods {
  final HttpFactory httpFactory = HttpFactory();

  /// Get Payment ---------------------
  Future<PaymentsRes> getPayment({
    required String transactionId,
    required String psk,
  }) async {
    String basicAuth = 'Basic ${base64.encode(utf8.encode('$psk:'))}';
    final response = await httpFactory.get(
      Apis.payments,
      params: <String, String>{
        'id': transactionId,
      },
      headers: <String, String>{
        'Authorization': basicAuth,
      },
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return PaymentsRes.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Get Payment');
    }
  }
}
