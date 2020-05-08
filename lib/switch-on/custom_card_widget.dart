import 'package:flutter/material.dart';

class CustomCardWidget extends StatefulWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onTap;

  const CustomCardWidget({
    @required this.text,
    @required this.iconData,
    @required this.onTap,
  });

  @override
  _CustomCardWidgetState createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCard,
      child: buildContainerCard(),
    );
  }

  void onTapCard() {
    setState(() {
      isActive = !isActive;
    });
    widget.onTap();
  }

  Container buildContainerCard() {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        color: isActive ? Colors.white : Colors.grey[800],
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: new EdgeInsets.all(0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                buildPaddingIcon(),
                buildPaddingOnOffText(),
              ],
            ),
            buildAlignLeftWidget(),
          ],
        ),
      ),
    );
  }

  Padding buildPaddingIcon() {
    return Padding(
      padding: EdgeInsets.only(left: 4, top: 7, right: 30, bottom: 10),
      child: Icon(
        widget.iconData,
        color: isActive ? Colors.black : Colors.white,
        size: 35,
      ),
    );
  }

  Padding buildPaddingOnOffText() {
    return Padding(
      padding: EdgeInsets.only(top: 0, right: 0, bottom: 20, left: 0),
      child: new Text(
        isActive ? 'On' : 'Off',
        style: TextStyle(color: isActive ? Colors.black : Colors.white),
      ),
    );
  }

  Align buildAlignLeftWidget() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 8, left: 5),
        child: Text(
          widget.text,
          style: TextStyle(
              color: isActive ? Colors.black : Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}
