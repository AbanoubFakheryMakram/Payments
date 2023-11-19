import 'package:pay/pay.dart';

class GooglePayHandler {

  // "environment": "TEST" || "PRODUCTION"
  static const String googlePayConfig = '''{
              "provider": "google_pay",              
              "data": {
                "environment": "TEST", 
                "apiVersion": 2,
                "apiVersionMinor": 0,
                "allowedPaymentMethods": [
                  {
                    "type": "CARD",
                    "tokenizationSpecification": {
                      "type": "PAYMENT_GATEWAY",
                      "parameters": {
                        "gateway": "example",
                        "gatewayMerchantId": "gatewayMerchantId"
                      }
                    },
                    "parameters": {
                      "allowedCardNetworks": ["VISA", "MASTERCARD"],
                      "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
                      "billingAddressRequired": true,
                      "billingAddressParameters": {
                        "format": "FULL",
                        "phoneNumberRequired": true
                      }
                    }
                  }
                ],
                "merchantInfo": {
                  "merchantId": "BCR2DN4TZ2L354DY",
                  "merchantName": "Link Payment"
                },
                "transactionInfo": {
                  "countryCode": "EG",
                  "currencyCode": "EGP"
                }
              }
            }''';

  static const paymentItems = [
    PaymentItem(
      label: 'Smart TV',
      amount: '9999.99',
      status: PaymentItemStatus.final_price,
    )
  ];
}


/*
  Response in case production mode
* {
  "transactionInfo": {
    "displayItems": [
      {
        "label": "Subtotal",
        "type": "SUBTOTAL",
        "price": "2"
      },
      {
        "label": "Tax",
        "type": "TAX",
        "price": "0.2"
      },
      {
        "type": "LINE_ITEM",
        "label": "Shipping cost",
        "price": "0.00",
        "status": "FINAL"
      }
    ],
    "countryCode": "US",
    "currencyCode": "USD",
    "totalPriceStatus": "FINAL",
    "totalPrice": "2.2",
    "totalPriceLabel": "Total",
    "transactionId": "aff9e1-3209-4b2c-8037-120d2c0d"
  },
  "paymentData": {
    "apiVersionMinor": 0,
    "apiVersion": 2,
    "paymentMethodData": {
      "description": "Mastercard •••• 1771",
      "tokenizationData": {
        "type": "PAYMENT_GATEWAY",
        "token": "{\"signature\":\"MEUCI+slJGaKBHZmphgIgJ8GKHlrPKnQcObF/lGfYjDmt1pu3kzPOYoBmdjdUFvw\\u003d\",\"intermediateSigningKey\":{\"signedKey\":\"{\\\"keyValue\\\":\\\"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQca0NVUE0gp/9xbueVNmy1o+NTcInbX/9ZN0QbXr8mng\\\\u003d\\\\u003d\\\",\\\"keyExpiration\\\":\\\"1614913712991\\\"}\",\"signatures\":[\"MEUCIQDb6d5nYqcL57Q09DPDrDKWxMgIgKaiLAEfdwNwG7S6nMvX1gRvQ\\u003d\"]},\"protocolVersion\":\"ECv2\",\"signedMessage\":\"{\\\"encryptedMessage\\\":\\\"9gmVUfk1Jua03felBqSUY4yXwzDzlhSHE2jm4VHDgsQ3xnzjQrlTAiyM87dP+8Cx9cks6SbrrK6vyWR7WmrPFhOaNFlulCvn9fI213ofHjRz7ebP71IFRCpgjeqG+nMQJXY8zjkhwXkUJTtOJ4SpXV7ByLyIXb/UJU7pg3O1m3Tl1zpe8C+hLQpKvAIZSAwEl4EBRafbcE33JyuV7RNLMlAerlELsGPUm0c04mM11vF3vdBVfgiyvVw5pJD2Gk/DX7fHdrUpPnzRt5ZoFU0jWZq/8rsj57cEzR+MK2MJVZE014D7iB8+7qcFjJ5H6Tdc/DCsyO5XDVp3Lu5aWZrIqJ6b9BkNPGiCDrV1OKRngc4OYPIGj7OrP7nQgIeU97EYT2xLzqWnfZ/PNCtj89mvT9mKp8y7V6eCJmK8BJsH9MLH08olwGo9pcU7Av2OXo837qUkcCxrkDrYh+wSbqS4p1SyoqgW+2BR+2zRoXU/\\\",\\\"ephemeralPublicKey\\\":\\\"BAAqw+C7aP+Z6KL2HLiP5J7Y/gEWpLQedowh7+r/7taxfNbNuC4\\\\u003d\\\",\\\"tag\\\":\\\"jkqoAh5l16mzlpmqVzpFx/k64\\\\u003d\\\"}\"}"
      },
      "type": "CARD",
      "info": {
        "cardNetwork": "MASTERCARD",
        "cardDetails": "1771",
        "billingAddress": {
          "address3": "",
          "sortingCode": "",
          "address2": "",
          "countryCode": "US",
          "address1": "123 Main Street",
          "postalCode": "07103",
          "name": "John Smith",
          "locality": "Newark",
          "administrativeArea": "NJ"
        }
      }
    },
    "shippingOptionData": {
      "id": "shipping-001"
    },
    "shippingAddress": {
      "address3": "",
      "sortingCode": "",
      "address2": "",
      "countryCode": "US",
      "address1": "123 Main Street",
      "postalCode": "10601",
      "name": "Test Test",
      "locality": "White Plains",
      "administrativeArea": "NY"
    },
    "email": "jsmith1234@abc.com"
  }
}
* */