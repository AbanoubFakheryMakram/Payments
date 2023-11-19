import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal/flutter_paypal.dart';

class PaypalPaymentHandler {
  static const String _clientId = "AUp4EffW7-lblcdIdvu0KReUIxhTKt2hT2xyoIGRRQmyVT1f28sMbN4V44XIgRgjU4z4wjiYaDKCqG7f";
  static const String _secretKey = "EJySi4-Cjn-MJ5wQSPKwn7Lh_Nge1PX7gM0oZuMnqME2IghYf3VM1l3-pRI3IG7-UbrEJcl8jjL_EEac";

  static void makePaypalPayment(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => UsePaypal(
          // Navigate to webview page
          sandboxMode: true,
          // if testing mode set to true
          clientId: _clientId,
          secretKey: _secretKey,
          returnURL: "success.snippetcoder.com",
          // callback url in case of success or failure
          cancelURL: "cancel.snippetcoder.com",
          // callback url in case of cancel
          transactions: const [
            {
              "description": "The payment transaction description.",
              "item_list": {
                "items": [
                  {"name": "Apple", "quantity": 4, "price": '5', "currency": "USD"},
                  {"name": "Orange", "quantity": 5, "price": '10', "currency": "USD"}
                ],
                // shipping address is Optional
                "shipping_address": {
                  "recipient_name": "Abanoub Makram",
                  "line1": "Minya",
                  "line2": "",
                  "city": "Smalout",
                  "country_code": "EG",
                  "postal_code": "",
                  "phone": "+201023798556",
                  "state": "Minya"
                },
              },
              "amount": {
                "total": '70',
                "currency": "USD",
                "details": {"subtotal": '70', "shipping": '0', "shipping_discount": 0}
              }
            }
          ],
          note: "PAYMENT_NOTE",
          onSuccess: (Map params) async {
            log("onSuccess: $params");
          },
          onError: (error) {
            print("onError: $error");
            Navigator.pop(context);
          },
          onCancel: () {
            print('cancelled:');
          },
        ),
      ),
    );
  }
}
