import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  UniqueKey _materialKey;
  UniqueKey _homeKey;

  @override
  void initState() {
    super.initState();
    _awaitAndRun();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //key: _materialKey,
      navigatorKey: _navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Provider(
        create: (context) => ToysGame(),
        child: MyHomePage(
          key: _homeKey,
          title: 'Flutter Demo Home Page',
        ),
      ),
    );
  }

  Future<void> _awaitAndRun() async {
    print('Starting delay... Please press the button before the time ends.');
    await Future<dynamic>.delayed(Duration(seconds: 5));
    setState(() {
      _materialKey = UniqueKey();
      _homeKey = UniqueKey();
    });
    print('Has been the screen reloaded?');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    Provider.of<ToysGame>(context, listen: false).count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              Provider.of<ToysGame>(context).count.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class ToysGame {
  int count = 5;

  void incrementNumber() {
    count++;
  }
}
