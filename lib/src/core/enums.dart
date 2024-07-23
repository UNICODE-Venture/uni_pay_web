enum PaymentStatus {
  /// First status of a payment. It indicates that the payment has been created but the cardholder did not pay yet.
  initiated,

  /// Payment reaches this status when the cardholder pays successfully.
  paid,

  /// Payment reaches this status when the cardholder or merchant has a certain error that caused the payment to fail (errors are attached to the message attribute).
  failed,

  /// Payment reaches this status when the merchant authorizes it to be manually captured anytime later— the cardholder is not charged yet.
  authorized,

  /// Payment reaches this status when the cardholder of an authorized payment is charged successfully.
  captured,

  /// Payment reaches this status when the merchant refunds a paid or captured payment successfully.
  refunded,

  /// Payment reaches this status when the merchant cancels a paid, authorized, or captured payment. It works only if the amount is not settled yet in the merchant’s bank account.
  voided,

  /// Payment reaches this status when the cardholder verifies his card in the tokenization process
  verified;
}

enum UniPayCurrency {
  /// [sar] is the currency for Saudi Riyal.
  sar,

  /// [usd] is the currency for United States Dollar.
  usd,

  /// [omr] is the currency for Omani Riyal.
  omr;
}
