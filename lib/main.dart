import 'package:flutter/material.dart';
import 'package:webview/webrenderer/renderer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webview Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WebView Test"),
          bottom: const TabBar(
            tabs: [
              Text("Hangman"),
              Text("Balls"),
              Text("Form"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Renderer(uri: "webapps/hangman/index.html"),
            Renderer(uri: "webapps/balls/index.html"),
            Renderer(uri: "webapps/forms/index.html"),
          ],
        ),
      ),
    );
  }
}
