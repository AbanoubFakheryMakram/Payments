import 'package:flutter/material.dart';
import 'package:payments/payments/paymob/card_payment.dart';
import 'package:payments/payments/paymob/paymob_handler.dart';

class PaymobPayment extends StatefulWidget {
  const PaymobPayment({Key? key}) : super(key: key);

  @override
  State<PaymobPayment> createState() => _PaymobPaymentState();
}

class _PaymobPaymentState extends State<PaymobPayment> {
  bool loading = false;
  String refCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paymob"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Card Payment"),
            onTap: () async {
              toggleLoading();
              String token = await PaymobHandler.authorizeToken();
              var orderId = await PaymobHandler.makeOrder(token);
              String finalToken = await PaymobHandler.getPaymentToken(token, orderId, PaymentType.card);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PaymobWebview(url: "https://accept.paymob.com/api/acceptance/iframes/782510?payment_token=$finalToken"),
                ),
              );
              toggleLoading();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            title: const Text("Reference Payment"),
            onTap: () async {
              toggleLoading();
              String token = await PaymobHandler.authorizeToken();
              var orderId = await PaymobHandler.makeOrder(token);
              String finalToken = await PaymobHandler.getPaymentToken(token, orderId, PaymentType.ref);
              var refCode = await PaymobHandler.refPayment(finalToken);
              this.refCode = refCode.toString();
              toggleLoading(clear: false);
            },
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            title: const Text("Wallet Cash (Vodafone, Orange, ...)"),
            onTap: () async {
              toggleLoading();
              String token = await PaymobHandler.authorizeToken();
              var orderId = await PaymobHandler.makeOrder(token);
              String finalToken = await PaymobHandler.getPaymentToken(token, orderId, PaymentType.wallet);
              var result = await PaymobHandler.walletPayment(finalToken, "01010101010");
              if(result.pending == true && result.success == false) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PaymobWebview(url: result.iframeRedirectionUrl ?? ''),
                  ),
                );
              } else {
                refCode = "error while transaction";
              }
              toggleLoading();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Visibility(
            visible: refCode.isNotEmpty,
            child: Text("Your ref code is $refCode"),
          ),
          const SizedBox(
            height: 15,
          ),
          loading ? const CircularProgressIndicator() : const SizedBox.shrink(),
        ],
      ),
    );
  }

  void toggleLoading({bool clear = true}) {
    setState(() {
      if(clear) refCode = '';
      loading = !loading;
    });
  }
}
