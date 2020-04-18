import 'package:flutter/material.dart';
import './list_search_view_model.dart';
import 'model/fixer.dart';

class ListSearchView extends ListSearchViewModel {
  Future request;

  @override
  void initState() {
    super.initState();
    request = getFixerAllItem();
  }

  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: AppBar(
        title: Text("Fixer"),
      ),
      body: buildFutureBuilder(),
    );
  }

  FutureBuilder<Fixer> buildFutureBuilder() {
    return FutureBuilder<Fixer>(
      initialData: Fixer(),
      future: request,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            if (snapshot.hasData) {
              return listWidgets(snapshot.data);
            } else
              return Center(
                child: Text("Not Found"),
              );
            break;
          default:
            return Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }

  Widget listWidgets(Fixer item) {
    return ListView(
      children: [textFieldSearch(), ...list(searchRates)],
    );
  }

  List<Widget> list(List<RatesModel> rates) {
    return List.generate(
        rates.length,
        (index) => ListTile(
              title: Text("${rates[index].key} - ${rates[index].value}"),
            ));
  }

  TextField textFieldSearch() => TextField(
        onChanged: (value) {
          searchRates = rates
              .where((element) => element.key.contains(value.toUpperCase()))
              .toList();

          setState(() {});
          print(searchRates.length);
          // ratesMap = ratesMap.
        },
      );
}
