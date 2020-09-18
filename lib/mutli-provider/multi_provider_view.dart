import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stackHelpOver/mutli-provider/sample_providers.dart';

class MulitProxyProviderSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserManager()),
        ChangeNotifierProxyProvider<UserManager, HomeManager>(
          create: (context) => HomeManager(),
          lazy: true,
          // builder: (context, child) => ,
          update: (_, userManager, __) => HomeManager()..setUser(userManager.user),
        ),
      ],
      child: MaterialApp(
        home: MultiProviderView(),
      ),
    );
  }
}

class MultiProviderView extends StatefulWidget {
  @override
  _MultiProviderViewState createState() => _MultiProviderViewState();
}

class _MultiProviderViewState extends State<MultiProviderView> {
  @override
  Widget build(BuildContext context) {
    print(context.watch<UserManager>().user);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.read<UserManager>().getUserData();
        },
      ),
      body: Center(
          child:
              context.watch<UserManager>().user == null ? CircularProgressIndicator() : buildColumnUserWidget(context)),
    );
  }

  Widget buildColumnUserWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.watch<UserManager>().user.name),
        RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MultiProviderView2(),
                  ));
            },
            child: Icon(Icons.keyboard_arrow_right))
      ],
    );
  }
}

class MultiProviderView2 extends StatefulWidget {
  @override
  _MultiProviderView2State createState() => _MultiProviderView2State();
}

class _MultiProviderView2State extends State<MultiProviderView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(context.watch<HomeManager>().user.name),
          Expanded(
            child: ListView.builder(
              itemCount: context.watch<HomeManager>().sampleUser.length,
              itemBuilder: (context, index) => Text(context.watch<HomeManager>().sampleUser[index].name),
            ),
          )
        ],
      ),
    );
  }
}
