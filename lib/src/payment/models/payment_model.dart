

class PaymentModel {
  late String transactionId;
  late String status;
  late int amount;
  late int fee;
  late String currency;
  late int refunded;
  late String refundedAt;
  late int captured;
  late String capturedAt;
  late String voidedAt;
  late String description;
  late String amountFormat;
  late String feeFormat;
  late String refundedFormat;
  late String capturedFormat;
  late String invoiceId;
  late String ip;
  late String callbackUrl;
  late String createdAt;
  late String updatedAt;

  PaymentModel({
    required this.transactionId,
    this.status = '',
    this.amount = 0,
    this.fee = 0,
    this.currency = '',
    this.refunded = 0,
    this.refundedAt = '',
    this.captured = 0,
    this.capturedAt = '',
    this.voidedAt = '',
    this.description = '',
    this.amountFormat = '',
    this.feeFormat = '',
    this.refundedFormat = '',
    this.capturedFormat = '',
    this.invoiceId = '',
    this.ip = '',
    this.callbackUrl = '',
    this.createdAt = '',
    this.updatedAt = '',
  });

  PaymentModel.fromJson(Map<String, dynamic> json) {
    transactionId = json['id'];
    status = json['status'] ?? '';
    amount = json['amount'] ?? 0;
    fee = json['fee'] ?? 0;
    currency = json['currency'] ?? '';
    refunded = json['refunded'] ?? 0;
    refundedAt = json['refunded_at'] ?? '';
    captured = json['captured'] ?? 0;
    capturedAt = json['captured_at'] ?? '';
    voidedAt = json['voided_at'] ?? '';
    description = json['description'] ?? '';
    amountFormat = json['amount_format'] ?? '';
    feeFormat = json['fee_format'] ?? '';
    refundedFormat = json['refunded_format'] ?? '';
    capturedFormat = json['captured_format'] ?? '';
    invoiceId = json['invoice_id'] ?? '';
    ip = json['ip'] ?? '';
    callbackUrl = json['callback_url'] ?? '';
    createdAt = json['created_at'] ?? '';
    updatedAt = json['updated_at'] ?? '';
  }
}
