import 'package:uni_pay_web/src/payment/models/payment_model.dart';

class PaymentsRes {
  /// [payments] is the list of payment transactions.
  List<PaymentModel> payments;

  /// [PaymentsRes] is hold the list of payment transactions.
  PaymentsRes({required this.payments});

  /// [fromJson] is a factory method that creates a new instance of the [PaymentsRes] class from a map of dynamic objects.
  factory PaymentsRes.fromJson(Map<String, dynamic> json) {
    return PaymentsRes(
      payments: json['payments'] != null
          ? List<PaymentModel>.from(
              json['payments'].map((x) => PaymentModel.fromJson(x)))
          : [],
    );
  }
}
