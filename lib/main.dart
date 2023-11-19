import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:payments/payments/apple_pay/apple_pay_handler.dart';
import 'package:payments/payments/google_pay/google_pay_handler.dart';
import 'package:payments/payments/paymob/paymob_payment.dart';
import 'package:payments/payments/paypal/paypal_payment_handler.dart';
import 'package:payments/payments/razorpay/razorpay_payment_handler.dart';
import 'package:payments/payments/stripe/stripe_payment_handler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GooglePayButton(
              type: GooglePayButtonType.pay,
              paymentConfiguration: PaymentConfiguration.fromJsonString(GooglePayHandler.googlePayConfig),
              onError: (error) {
                print("error --> $error");
              },
              onPaymentResult: (result) {
                log("result --> $result");
              },
              paymentItems: GooglePayHandler.paymentItems,
              loadingIndicator: const Center(child: CircularProgressIndicator()),
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            ),
            ApplePayButton(
              paymentConfiguration: PaymentConfiguration.fromJsonString(ApplePayHandler.defaultApplePay),
              paymentItems: ApplePayHandler.paymentItems,
              type: ApplePayButtonType.buy,
              style: ApplePayButtonStyle.black,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: (result) {
                log(result.toString());
              },
              onError: (error) {

              },
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            const SizedBox(height: 15,),
            makeBtn("Paypal Payment", () {
              PaypalPaymentHandler.makePaypalPayment(context);
            }),
            const SizedBox(height: 15,),
            makeBtn("Paymob pay", () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const PaymobPayment()));
            }),
          ],
        ),
      ),
    );
  }

  Widget makeBtn(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all(Colors.purple),
          ),
          onPressed: onTap,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
