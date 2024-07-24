import 'package:uni_pay_web/uni_pay_web.dart';

void main() {
  /// 1- Create Invoice Example -------------------------------
  var dto = UniInvoiceDTO(
    amount: '100',
    description: 'Test Description',
  );
  final createInvoiceRes = UniPayWeb.createInvoice(
    dto: dto,
    sk: 'YOUR-KEY',
  );
  print('createInvoiceRes: $createInvoiceRes');

  /// 2- Get Payment Example -------------------------------
  final getPaymentRes = UniPayWeb.getPayment(
    transactionId: 'TRANSACTION-ID',
    sk: 'YOUR-KEY',
  );
  print('uniPayWeb: $getPaymentRes');
}
