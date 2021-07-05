import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Ebook extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trò chơi',
      home: Scaffold(
        
        body: Center(
          child: WebView(
          initialUrl: "https://sachvui.com",
          javascriptMode: JavascriptMode.unrestricted,
          ),
        )
      ),
    );
  }
}