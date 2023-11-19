// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'dart:developer' as dev;
//
// class StripePaymentHandler {
//   static const String _publishableKey = "pk_test_51NfgXESBjiha7Kn9geABjP1QMLnE3C6KLuMjQPQ67Fm9cDD5nhnuv7y8X8OT4DDRwTlSeBcWh32AP0FGwdite03T005CUl4osl";
//   static const String _secretKey = "sk_test_51NfgXESBjiha7Kn9STszQrv9FnPYoN5hYJlNcu3u41EoCVCGDdawEo4cLE9ghv05sBBZcqD2GXekLKMmyoCVATJI00SApBN6zj";
//
//   static Map<String, dynamic>? _intentResponse;
//
//   static Future<void> makeCardPayment(int amount, String currency) async {
//     await _initStripe();
//     await _makeIntend(amount, currency);
//   }
//
//   static Future<void> _makeIntend(int amount, String currency) async {
//     var dio = Dio();
//     var response = await dio.post(
//       "https://api.stripe.com/v1/payment_intents",
//       data: {
//         "amount": amount,
//         "currency": currency,
//       },
//       options: Options(
//         followRedirects: false,
//         receiveDataWhenStatusError: false,
//         validateStatus: (status) {
//           return status! <= 500;
//         },
//         headers: {
//           'Authorization': 'Bearer $_secretKey',
//           'Content-Type': 'application/x-www-form-urlencoded',
//           'Accept': "application/json",
//         },
//       ),
//     );
//
//     dev.log('---> ${response.data}');
//
//     _intentResponse = response.data;
//     await _initPaymentSheet();
//   }
//
//   static Future<void> _initPaymentSheet() async {
//     await Stripe.instance.initPaymentSheet(
//       paymentSheetParameters: SetupPaymentSheetParameters(
//         style: ThemeMode.system,
//         paymentIntentClientSecret: _intentResponse!['client_secret'],
//         customerId: _intentResponse!['customer'],
//         merchantDisplayName: "Link Dev",
//         googlePay: const PaymentSheetGooglePay(
//           merchantCountryCode: "GB",
//           currencyCode: "GBP",
//           testEnv: true,
//         ),
//         applePay: const PaymentSheetApplePay(merchantCountryCode: "INR"),
//       ),
//     );
//
//     await _displayPaymentSheet();
//   }
//
//   static Future<void> _displayPaymentSheet() async {
//     try {
//       await Stripe.instance.presentPaymentSheet().then((value) {
//         print("--> Payment Successfully");
//       });
//       Stripe.instance.confirmPaymentSheetPayment();
//     } catch (e) {
//       print('error ----> $e');
//     }
//   }
//
//   static Future<void> _initStripe() async {
//     Stripe.publishableKey = _publishableKey;
//     Stripe.merchantIdentifier = "Abanoub Fakhry";
//     await Stripe.instance.applySettings();
//     ;
//   }
// }
