import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class AudioBook extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Book',
      home: Scaffold(
        
        body: Center(
          child: WebView(
          initialUrl: "https://sachmp3.com",
          javascriptMode: JavascriptMode.unrestricted,
          ),
        )
      ),
    );
  }
}