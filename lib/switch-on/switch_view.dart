import 'package:flutter/material.dart';

import 'custom_card.dart';

class SwitchView extends StatefulWidget {
  @override
  _SwitchViewState createState() => _SwitchViewState();
}

class _SwitchViewState extends State<SwitchView> {
  bool isActiveOnView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomCard(
          iconData: Icons.access_alarm,
          isActive: isActiveOnView,
          text: "Hello",
          onTap: changeSwitchButton,
        ),
      ),
    );
  }

  void changeSwitchButton() {
    setState(() {
      isActiveOnView = !isActiveOnView;
    });
  }
}
