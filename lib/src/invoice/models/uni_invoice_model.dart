import 'dart:convert';

class UniInvoiceModel {
  late String id;
  late String status;
  late int amount;
  late String currency;
  late String description;
  late String logoUrl;
  late String amountFormat;
  late String url;
  late String callbackUrl;
  late String expiredAt;
  late String createdAt;
  late String updatedAt;
  late String backUrl;
  late String successUrl;
  late Map<String, dynamic> metadata;

  UniInvoiceModel({
    required this.id,
    this.status = '',
    this.amount = 0,
    this.currency = '',
    this.description = '',
    this.logoUrl = '',
    this.amountFormat = '',
    this.url = '',
    this.callbackUrl = '',
    this.expiredAt = '',
    this.createdAt = '',
    this.updatedAt = '',
    this.backUrl = '',
    this.successUrl = '',
    this.metadata = const {},
  });

  UniInvoiceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'] ?? '';
    amount = json['amount'] ?? 0;
    currency = json['currency'] ?? '';
    description = json['description'] ?? '';
    logoUrl = json['logo_url'] ?? '';
    amountFormat = json['amount_format'] ?? '';
    url = json['url'] ?? '';
    callbackUrl = json['callback_url'] ?? '';
    expiredAt = json['expired_at'] ?? '';
    createdAt = json['created_at'] ?? '';
    updatedAt = json['updated_at'] ?? '';
    backUrl = json['back_url'] ?? '';
    successUrl = json['success_url'] ?? '';
    metadata = json['metadata'] != null ? jsonDecode(json['metadata']) : {};
  }
}
