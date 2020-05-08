import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final bool isActive;
  final String text;
  final IconData iconData;
  final VoidCallback onTap;

  const CustomCard({
    @required this.isActive,
    @required this.text,
    @required this.iconData,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
                  Padding(
                    padding:
                        EdgeInsets.only(left: 4, top: 7, right: 30, bottom: 10),
                    child: Icon(
                      iconData,
                      color: isActive ? Colors.black : Colors.white,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, right: 0, bottom: 20, left: 0),
                    child: new Text(
                      isActive ? 'On' : 'Off',
                      style: TextStyle(
                          color: isActive ? Colors.black : Colors.white),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 8, left: 5),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: isActive ? Colors.black : Colors.white,
                        fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
