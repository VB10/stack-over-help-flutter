import 'package:flutter/material.dart';
import 'package:stackHelpOver/async_func/weather_view.dart';
import 'package:stackHelpOver/grid_fab/grid_fab_view.dart';
import 'package:stackHelpOver/html_parse/html_parse.dart';
import 'package:stackHelpOver/instagram_ui/instagram_view.dart';
import 'package:stackHelpOver/pinch_image_zoom/pinch_image_zoom.dart';
import 'package:stackHelpOver/pinch_image_zoom/pinch_image_zoom_view.dart';
import 'package:stackHelpOver/switch-on/switch_view.dart';
import 'package:stackHelpOver/webview-local-listen/web_view_local_view.dart';

import 'list_search/list_search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) { })
    return MaterialApp(
      title: 'Material App',
      home: WebViewLocalView(),
    );
  }
}
