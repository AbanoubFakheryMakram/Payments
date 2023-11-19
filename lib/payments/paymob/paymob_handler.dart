import 'dart:convert';

import 'package:dio/dio.dart';
import 'dart:developer' as dev;
import 'package:payments/payments/paymob/wallet_pay_response.dart';

class PaymobHandler {
  // these values changes from test mode to live mode
  static const String _apiKey =
      "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2T0RneU1EVXlMQ0p1WVcxbElqb2lNVFk1TWpjNE1UazNOaTQxT1Rjek5USWlmUS4tbUJzemEyQ1V6Qnk0LTRzeDRaWjNhVFI3TmIxcmZyb3hpNWFWSUs2Y3hyN2FJM3VodU80eXI4TTRmZ25ZYnREeW13dHN3b2pqVExTQ1M1V0pBYlByUQ==";

  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://accept.paymob.com/api/",
      contentType: Headers.jsonContentType,
      followRedirects: false,
    ),
  );

  // step: 1
  static Future<String> authorizeToken() async {
    var response = await _dio.post(
      "auth/tokens",
      data: {"api_key": _apiKey},
    );

    return response.data['token'];
  }

  // step: 2
  static Future makeOrder(String token) async {
    var response = await _dio.post(
      "ecommerce/orders",
      data: {
        "auth_token": token,
        "delivery_needed": "false",
        "amount_cents": "500000",
        "currency": "EGP",
        "items": [
          {
            "name": "ASC1515",
            "amount_cents": "500000",  // the passed amount will divided by 100
            "description": "Smart Watch",
            "quantity": "1"
          },
        ],
      },
    );

    return response.data['id'];
  }

  // step: 3
  static Future<String> getPaymentToken(String token, var orderId, PaymentType type) async {
    var response = await _dio.post(
      "acceptance/payment_keys",
      data: {
        "auth_token": token,
        "order_id": orderId,
        "integration_id": type.value,
        "amount_cents": "500000",
        "currency": "EGP",
        "expiration": 3600,
        "billing_data": {  // Required    // NA not available
          "first_name": "Clifford",
          "last_name": "NA",
          "phone_number": "+86(8)9135210487",
          "apartment": "803",
          "email": "claudette09@exa.com",
          "floor": "42",
          "street": "Ethan Land",
          "building": "8028",
          "shipping_method": "PKG",
          "postal_code": "01898",
          "city": "Jaskolskiburgh",
          "country": "CR",
          "state": "Utah"
        },
      },
    );

    return response.data['token'];  // final taken
  }

  // reference payment
  static Future refPayment(String token) async {
    var response = await _dio.post(
      "acceptance/payments/pay",
      data: {
        "source": {
          "identifier": "AGGREGATOR",
          "subtype": "AGGREGATOR"
        },
        "payment_token": token,
      },
    );

    return response.data['data']['bill_reference'];
  }

  // vodafone, etisalat, orange cash
  // https://docs.paymob.com/docs/mobile-wallets
  static Future<WalletPayResponse> walletPayment(String token, String mobile) async {
    var response = await _dio.post(
      "acceptance/payments/pay",
      data: {
        "source": {
          "identifier": mobile,
          "subtype": "WALLET",
        },
        "payment_token": token,
      },
    );

    dev.log(json.encode(response.data).toString());
    return WalletPayResponse.fromJson(response.data);
  }
}

enum PaymentType {
  card(4115665),
  ref(4115667),
  wallet(4117462);

  const PaymentType(this.value);
  final int value;
}
