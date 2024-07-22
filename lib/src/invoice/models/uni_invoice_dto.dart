import 'package:uni_pay_web/src/core/enums.dart';

class UniInvoiceDTO {
  /// The amount should be in the smallest currency unit. Means, ( 100 Halals to charges 1 Riyal )
  late String amount;

  /// 3-letter ISO code for currency. (default: SAR)
  late UniPayCurrency currency;

  /// An arbitrary string that you can attach to an invoice object. This may include a description of the merchandise or the service that your customer is billed for. The invoice description is displayed on the invoice alongside the amount when the invoice is presented to the user.
  late String description;

  /// Specifies when the invoice will get expired. An expired invoice cannot have payment attempts as its status will be expired.
  String? expiredAt;

  /// An endpoint on your site, that we will redirect to after the customer pays successfully.
  String? successUrl;

  /// An endpoint on your site, that we will redirect to after the user clicks on the back button.
  String? backUrl;

  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata.
  Map<String, dynamic>? metadata;

  UniInvoiceDTO({
    required this.amount,
    this.currency = UniPayCurrency.sar,
    required this.description,
    this.expiredAt,
    this.successUrl,
    this.backUrl,
    this.metadata,
  });

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency.name.toUpperCase(),
      'description': description,
      if (expiredAt != null) 'expired_at': expiredAt,
      if (successUrl != null) 'success_url': successUrl,
      if (backUrl != null) 'back_url': backUrl,
      if (metadata != null) 'metadata': metadata,
    };
  }
}
