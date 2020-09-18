import 'package:flutter/material.dart';
import 'package:stackHelpOver/future-builder/view/future_builder_view.dart';

import 'mutli-provider/multi_provider_view.dart';
import 'webview-local-listen/web_view_local_view.dart';

void main() => runApp(MulitProxyProviderSample());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) { })
    return MaterialApp(
      title: 'Material App',
      home: MulitProxyProviderSample(),
    );
  }
}
