import 'package:flutter/material.dart';

class GridFabView extends StatefulWidget {
  @override
  _GridFabViewState createState() => _GridFabViewState();
}

class _GridFabViewState extends State<GridFabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          FloatingActionButton(onPressed: () {}),
          FloatingActionButton(onPressed: () {}),
          FloatingActionButton(onPressed: () {}),
          FloatingActionButton(onPressed: () {}),
          FloatingActionButton(onPressed: () {}),
          FloatingActionButton(onPressed: () {}),
        ],
      ),
    );
  }
}
