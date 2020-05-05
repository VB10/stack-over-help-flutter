import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import './html_parse_view_model.dart';

class HtmlParseView extends HtmlParseViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Html(
        data: data,
        useRichText: false,
        customRender: htmlCustomRenderer,
      ),
    );
  }
}
