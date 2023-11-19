# Google payment

Is an online payment system that allows you to pay 
Fees: Google Pay does not impose fees, but you may pay a fee to the bank or network that issued your payment card when you use Google Pay
It Support all countries

## Getting Started

First of all you must create account through the blow link
- [https://pay.google.com/business/console]

You will be asked for some information to verify

From dashboard you can get [Public business name] and [Merchant ID]

These the basics guide of creating your developer paypal account, Of course you can expand your business as you need from your console
You can also follow the docs [Google pay api section]

To use test cards when using the test environment you have to join this Google group from this link [https://groups.google.com/forum/#!forum/googlepay-test-mode-stub-data]

It totally handled in webview 

## Getting Started In Flutter
PLATFORM: All platforms
In your pubspec.yaml add this dependency [pay: version]

## Let's start
The payment flow is as follows:

The user taps the Google Pay payment button and sees a payment sheet with a list of supported payment methods.
The user selects a payment method and Google Pay securely returns a payment token for that method to your app.
Your app submits the payment token, along with details about the purchase, to its backend.
To execute the payment, the backend processes the purchase and sends the payment token to the payment service provider.

Its too simple just see the example in main file

for further details see this article [https://medium.com/@gauravswarankar/gpay-in-flutter-958c8b856f0b]