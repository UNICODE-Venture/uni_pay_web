# Payment Gateway Library by **UNICODE Team**

A library for making online payment by using Moyasar

# **Features support**

- **Card support (mada, visa, mastercard) - [Docs](https://moyasar.com/docs/api/#api-keys)**
- **Apple Pay - [Integration](https://help.moyasar.com/en/article/moyasar-dashboard-apple-pay-certificate-activation-9l6sd5/) and [Xcode setup](https://help.apple.com/xcode/mac/9.3/#/deva43983eb7?sub=dev44ce8ef13)**
- **Tamara - [Docs](https://docs.tamara.co/introduction/)**

# **Current supported methods**

- **CreateInvoice**
  you can create Invoice by passing [amount , currency , description, expiredAt , successUrl ,backUrl ,metadata]
- **GetPayment**
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
    metadata: {},
  ),
);

// 2- Get Payment Details
final getPaymentRes = UniPayWeb.getPayment(
  transactionId: 'TRANSACTION-ID',
  psk: 'YOUR-PUBLISHABLE-SECRET-KEY',
);

```

## Contributing

Contributions are welcome! If you would like to contribute, please fork the repository and submit a pull request.

## License

UniShipping is available under the [MIT license](LICENSE). See the LICENSE file for more info.

```

```
