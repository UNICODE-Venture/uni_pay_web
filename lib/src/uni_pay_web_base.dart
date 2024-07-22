import 'package:uni_pay_web/src/invoice/invoicies_methods.dart';
import 'package:uni_pay_web/src/invoice/models/uni_invoice_dto.dart';
import 'package:uni_pay_web/src/invoice/models/uni_invoice_model.dart';
import 'package:uni_pay_web/src/payment/models/payments_res.dart';
import 'package:uni_pay_web/src/payment/payment_methods.dart';

final InvoicesMethods _invoicesMethods = InvoicesMethods();
final PaymentMethods _paymentMethods = PaymentMethods();

class UniPayWeb {
  UniPayWeb._();

  /// Create Invoice ---------------------
  ///
  /// PSK: Publishable Secret Key
  static Future<UniInvoiceModel> createInvoice({
    required UniInvoiceDTO dto,
    required String psk,
  }) {
    return _invoicesMethods.createInvoice(dto: dto, psk: psk);
  }

  /// Get Payment ---------------------
  ///
  /// PSK: Publishable Secret Key
  static Future<PaymentsRes> getPayment({
    required String transactionId,
    required String psk,
  }) {
    return _paymentMethods.getPayment(transactionId: transactionId, psk: psk);
  }
}
