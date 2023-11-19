# Paypal payment

Is an online payment system that allows you to send and receive money around the world
Fees 2.99%
It Support all countries

## Getting Started

First of all you must create account through the blow link
- [https://developer.paypal.com/]

You will be asked for name email, password and your country then you will need to verify your email or mobile number or both

From dashboard go to Apps & Credentials where you will see your [Client id] and [Secret key] the two keys you need while transactions

These the basics guide of creating your developer paypal account, Of course you can expand your business as you need from your console
You can also follow the docs [https://developer.paypal.com/docs]

It totally handled in webview 

## Getting Started In Flutter
PLATFORM: All platforms
In your pubspec.yaml add this dependency [flutter_paypal: version] 

No required for any specific configuration

## Let's start
Its too simple just see the PaypalPaymentHandler.makePaypalPayment() example in (lib/payments/paypal/paypal_payment_handler.dart)