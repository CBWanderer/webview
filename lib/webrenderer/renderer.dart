import 'package:asset_webview/asset_webview.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Renderer extends StatefulWidget {
  const Renderer({super.key, required this.uri});

  final String uri;

  @override
  State<Renderer> createState() => _RendererState();
}

class _RendererState extends State<Renderer> {
  late final WebViewController _controller;

  late final AssetWebview _webviewController;

  @override
  void initState() {
    super.initState();
    // _webviewController.
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // ..loadRequest(Uri.parse("https://www.google.com/"));
      ..loadFlutterAsset(widget.uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              // WebViewWidget(controller: _controller)
              Expanded(
                  child:
                      AssetWebview(initialUrl: 'asset://local/${widget.uri}'))),
    );
  }
}
