import 'package:flutter/material.dart';
import 'package:stackHelpOver/async_func/weather_view.dart';
import 'package:stackHelpOver/pinch_image_zoom/pinch_image_zoom.dart';
import 'package:stackHelpOver/pinch_image_zoom/pinch_image_zoom_view.dart';

import 'list_search/list_search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: WeatherView(),
    );
  }
}
