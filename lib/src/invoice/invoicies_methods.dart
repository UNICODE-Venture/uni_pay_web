import 'dart:convert';
import 'package:uni_pay_web/src/core/apis.dart';
import 'package:uni_pay_web/src/core/http_factory.dart';
import 'package:uni_pay_web/src/invoice/models/uni_invoice_dto.dart';
import 'package:uni_pay_web/src/invoice/models/uni_invoice_model.dart';

class InvoicesMethods {
  final HttpFactory httpFactory = HttpFactory();

  /// Create Invoice ---------------------
  Future<UniInvoiceModel> createInvoice({
    required UniInvoiceDTO dto,
    required String sk,
  }) async {
    String basicAuth = 'Basic ${base64.encode(utf8.encode('$sk:'))}';
    final response = await httpFactory.post(
      Apis.invoices,
      body: dto.toJson(),
      headers: <String, String>{
        'Authorization': basicAuth,
      },
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return UniInvoiceModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Create Invoice');
    }
  }
}
