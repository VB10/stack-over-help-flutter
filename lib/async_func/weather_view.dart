import 'package:flutter/material.dart';

class WeatherView extends StatefulWidget {
  @override
  _WeatherViewState createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  // MARK: USE CASE 1
  Future<int> getTemp() async {
    // get api call
    await Future.delayed(Duration(seconds: 1));
    return 5;
  }

  int value;

  Future getTemp2() async {
    // get api call
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      value = 5;
    });
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() => getTemp2());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${value ?? "-"}"),
      ),
    );
  }

  FutureBuilder<int> buildFutureBuilder() {
    return FutureBuilder<int>(
      future: getTemp(),
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            if (snapshot.hasData) {
              return Text("${snapshot.data}");
            }
            return Text("Erorr");
            break;
          default:
            return Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
