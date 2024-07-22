import 'package:uni_pay_web/src/payment/models/payment_model.dart';

class PaymentsRes {
  List<PaymentModel> payments;

  PaymentsRes({required this.payments});

  factory PaymentsRes.fromJson(Map<String, dynamic> json) {
    return PaymentsRes(
      payments: json['payments'] != null
          ? List<PaymentModel>.from(json['payments'].map((x) => PaymentModel.fromJson(x)))
          : [],
    );
  }
}
