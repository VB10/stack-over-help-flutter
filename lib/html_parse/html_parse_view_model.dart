import 'package:flutter/material.dart';
import './html_parse.dart';
import 'package:html/dom.dart' as dom;

abstract class HtmlParseViewModel extends State<HtmlParse> {
  // Add your state and logic here

  final data = """
    <!--For a much more extensive example, look at example/main.dart-->
    <div>
      <h1>Demo Page</h1>
      <p>This is a fantastic nonexistent product that you should buy!</p>
      <h2>Pricing</h2>
      <p>Lorem ipsum <b>dolor</b> sit amet.</p>
      <h2>The Team</h2>
      <p>There isn't <i>really</i> a team...</p>

      <h2>Installation</h2>
      <ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>
      <p>You <u>cannot</u> install a nonexistent product!</p>
      <!--You can pretty much put any html in here!-->
    </div>
  """;

  Widget htmlCustomRenderer(dom.Node node, List<Widget> children) {
    if (node is dom.Element) {
      switch (node.localName) {
        case "li":
          return customListItem(node);
      }
    }
    return null;
  }

  Wrap customListItem(dom.Element node) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 5,
      children: [
        CircleAvatar(
          radius: 5,
        ),
        Text(node.text)
      ],
    );
  }
}
