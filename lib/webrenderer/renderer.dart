import 'package:asset_webview/asset_webview.dart';
import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class Renderer extends StatefulWidget {
  const Renderer({super.key, required this.uri});

  final String uri;

  @override
  State<Renderer> createState() => _RendererState();
}

class _RendererState extends State<Renderer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: AssetWebview(initialUrl: 'asset://local/${widget.uri}'));
  }
}
