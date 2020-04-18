import 'package:flutter/material.dart';

import 'list_search/list_search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListSearch(),
    );
  }
}
