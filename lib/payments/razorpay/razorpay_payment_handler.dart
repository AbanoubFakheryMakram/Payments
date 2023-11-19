// import 'package:razorpay_flutter/razorpay_flutter.dart';
//
// class RazorpaylPaymentHandler {
//   static const String _keyId = "rzp_test_ETNAxPmVbG0WKs";
//   static const String _secretKey = "AlFVNjgYOK3oQ3B76fh90puQ";
//   static const String _merchantId = "MSGu8E4XWMqINB";
//
//   static void makePaypalPayment() {
//     var _razorpay = Razorpay();
//     _razorpay.clear(); // Removes all listeners
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//
//     var options = {
//       'key': _keyId,
//       'amount': 100,
//       'name': 'Acme Corp.',
//       'description': 'Fine T-Shirt',
//       'retry': {'enabled': true, 'max_count': 1},
//       'send_sms_hash': true,
//       'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
//       'external': {
//         'wallets': ['paytm']
//       }
//     };
//
//     _razorpay.open(options);
//   }
//
//   static void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     // Do something when payment succeeds
//   }
//
//   static void _handlePaymentError(PaymentFailureResponse response) {
//     // Do something when payment fails
//   }
//
//   static void _handleExternalWallet(ExternalWalletResponse response) {
//     // Do something when an external wallet was selected
//   }
// }
