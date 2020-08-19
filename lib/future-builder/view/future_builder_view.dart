import 'package:flutter/material.dart';

import '../model/http_cat_model.dart';
import '../model/user_model.dart';
import '../service/IFutureService.dart';
import '../service/future_service.dart';
import 'future_extension.dart';

class FutureView extends StatefulWidget {
  @override
  _FutureViewState createState() => _FutureViewState();
}

class _FutureViewState extends State<FutureView> with AutomaticKeepAliveClientMixin {
  final httpCatPath = "https://hwasampleapi.firebaseio.com/http.json";
  final userPath = "https://jsonplaceholder.typicode.com/users";
  bool isLoading = false;
  List<HttpCatModel> catsList = [];

  IFutureService futureService;

  Future<List<HttpCatModel>> http;
  @override
  void initState() {
    super.initState();
    futureService = FutureService();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(title: buildTitleLaoding),
      body: futureService.getHttpUserModel(userPath).toBuild<List<UserModel>>(
        onSucces: (data) {
          return buildListViewUser(data);
        },
      ),
    );
  }

  ListView buildListViewUser(List<UserModel> users) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Text(users[index].name),
            title: Text(users[index].company.name),
          ),
        );
      },
    );
  }

  ListView buildListView(List<HttpCatModel> cats) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: cats.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network(cats[index].imageUrl),
            title: Text(cats[index].description),
          ),
        );
      },
    );
  }

  Widget get buildTitleLaoding {
    return isLoading
        ? CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
        : Text("Http Cats");
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
