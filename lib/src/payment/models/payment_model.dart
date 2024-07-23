class PaymentModel {
  /// [transactionId] is the unique identifier of the payment transaction.
  late String transactionId;

  /// [status] is the status of the payment transaction.
  late String status;

  /// [amount] is the amount of the payment transaction.
  late int amount;

  /// [fee] is the fee associated with the payment transaction.
  late int fee;

  /// [currency] is the currency used for the payment transaction.
  late String currency;

  /// [refunded] is the amount refunded for the payment transaction.
  late int refunded;

  /// [refundedAt] is the date and time when the payment transaction was refunded.
  late String refundedAt;

  /// [captured] is the amount captured for the payment transaction.
  late int captured;

  /// [capturedAt] is the date and time when the payment transaction was captured.
  late String capturedAt;

  /// [voidedAt] is the date and time when the payment transaction was voided.
  late String voidedAt;

  /// [description] is the description of the payment transaction.
  late String description;

  /// [amountFormat] is the formatted amount of the payment transaction.
  late String amountFormat;

  /// [feeFormat] is the formatted fee associated with the payment transaction.
  late String feeFormat;

  /// [refundedFormat] is the formatted amount refunded for the payment transaction.
  late String refundedFormat;

  /// [capturedFormat] is the formatted amount captured for the payment transaction.
  late String capturedFormat;

  /// [invoiceId] is the unique identifier of the invoice associated with the payment transaction.
  late String invoiceId;

  /// [ip] is the IP address of the device used for the payment transaction.
  late String ip;

  /// [callbackUrl] is the URL to which the payment transaction callback should be sent.
  late String callbackUrl;

  /// [createdAt] is the date and time when the payment transaction was created.
  late String createdAt;

  /// [updatedAt] is the date and time when the payment transaction was last updated.
  late String updatedAt;

  /// [PaymentModel] is the constructor of the class of the payment transaction.
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

  /// [PaymentModel.fromJson] is a method that converts a JSON object into a PaymentModel object.
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
