import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewLocalView extends StatefulWidget {
  @override
  _WebViewLocalViewState createState() => _WebViewLocalViewState();
}

class _WebViewLocalViewState extends State<WebViewLocalView> {
  final body = '''
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<p>Click the button to swap the text of the DIV element:</p>

<p><button onclick="myFunction()">Click Me</button></p>

<div id="myDIV">Hello</div>

<script>
function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.innerHTML === "Hello") {
    x.innerHTML = "Swapped text!";
  } else {
    x.innerHTML = "Hello";
  }
}
</script>

</body>
</html>


  ''';

  Uri get uri => Uri.dataFromString(body, mimeType: 'text/html');

  final flutterWebviewPlugin = FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) async {
      String script = 'document.getElementById("myDIV").innerHTML';
      var title = await flutterWebviewPlugin.evalJavascript(script);
      print("$title");
    });
  }

  @override
  Widget build(BuildContext context) {
    // return WebView(
    //   initialUrl: Uri.dataFromString(body, mimeType: 'text/html').toString(),
    // );
    return WebviewScaffold(
      url: uri.toString(),
      debuggingEnabled: true,
    );
  }
}
