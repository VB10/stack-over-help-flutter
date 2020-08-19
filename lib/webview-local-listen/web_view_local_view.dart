import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

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

  final int maxDuration = 120;

  final flutterWebviewPlugin = FlutterWebviewPlugin();
  Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 1), (timer) async {
      String script = 'document.getElementById("myDIV").innerHTML';
      var title = await flutterWebviewPlugin.evalJavascript(script);
      print("$title");

      if (maxDuration < 0) {
        Navigator.pop(context);
      } else {
        if (title == "Veli") {
          timer.cancel();
          this.timer.cancel();
        }
      }
    });

    flutterWebviewPlugin.onUrlChanged.listen((event) {
      if (event.contains("100")) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: uri.toString(),
      debuggingEnabled: true,
    );
  }
}
