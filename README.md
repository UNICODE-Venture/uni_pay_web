# Payment Gateway Library Crafted by the **[UNICODE Team](https://www.unicodesolutions.co/).**

A lightweight library for processing online payments and generating invoices with Moyasar, providing seamless payment info retrieval as well (🇸🇦💙🇧🇩❤️🇪🇬).

# **Features support**

- **Card support (mada, visa, mastercard, amex) - [Docs](https://moyasar.com/docs/api/#api-keys)**
- **Apple Pay - [Integration](https://help.moyasar.com/en/article/moyasar-dashboard-apple-pay-certificate-activation-9l6sd5/) and [Xcode setup](https://help.apple.com/xcode/mac/9.3/#/deva43983eb7?sub=dev44ce8ef13)**
- **stcpay - [Docs](https://docs.moyasar.com/stc-pay)**

# **Current supported methods**

- `CreateInvoice`
  you can create Invoice by passing [amount , currency , description, expiredAt , successUrl ,backUrl ,metadata]
- `GetPayment`
  you can get payment details with [id]

## Getting started

To use UniShipping in your Flutter project, follow these steps:

### Installation

1. Add uni_pay_web to your `pubspec.yaml` file:

```yaml
dependencies:
  uni_pay_web: latest_version
```

2. Run `flutter pub get` to install the package.

3- Now You can call the methods:

```dart
// 1- Create Invoice
final createInvoiceRes = UniPayWeb.createInvoice(
  psk: 'YOUR-PUBLISHABLE-SECRET-KEY',
  dto: UniInvoiceDTO(
    amount: '100',
    currency: 'SAR',
    description: 'Test Description',
    expiredAt: 'expiredAt',
    successUrl: 'successUrl',
    backUrl: 'backUrl',
    metadata: {
        'product_name': "your-product-name",
        'product_id': "abc123",
    },
  ),
);

// 2- Get Payment Details
final getPaymentRes = UniPayWeb.getPayment(
  transactionId: 'TRANSACTION-ID',
  psk: 'YOUR-PUBLISHABLE-SECRET-KEY',
);

```

#### If you enjoyed it, then give it a star ⭐️ and like 👍🏻 and for more arts & crafts 🎨 from our team kindly visit here [Team UNICODE](https://pub.dev/publishers/unicodesolutions.co/packages). Until next time, keep coding and stay awesome 😉
