import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymobWebview extends StatefulWidget {
  final String url;

  PaymobWebview({Key? key, required this.url}) : super(key: key);

  @override
  State<PaymobWebview> createState() => _PaymobWebviewState();
}

class _PaymobWebviewState extends State<PaymobWebview> {
  late WebViewController controller;
  bool loading = true;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (value) {
          if(value == 100) {
            setState(() {
              loading = false;
            });
          }
        }
      ))
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paymob card payment"),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          Center(
            child: loading ? const CircularProgressIndicator() : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
