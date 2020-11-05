import 'package:flutter/material.dart';

import 'documents.dart';

class FireStoreView extends StatelessWidget {
  List<Document> dummyItems = [
    Document(documents: [
      Documents(
          name: "vb",
          createTime: DateTime.now().toString(),
          updateTime: DateTime.now().toString(),
          fields: Fields(
            authorName: ImgUrl(stringValue: "Vv"),
            desc: ImgUrl(stringValue: "vvv"),
            imgUrl: ImgUrl(stringValue: "ss"),
            title: ImgUrl(stringValue: "sssx"),
          ))
    ])
  ];

  Future<List<Document>> getDocuments() async {
    await Future.delayed(Duration(seconds: 100));
    return dummyItems;
  }

  Future<List<Documents>> getFieldsOnly() async {
    final response = await getDocuments();
    return response.expand((f) => f.documents).toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Document>>(
      future: getDocuments(),
      builder: (BuildContext context, AsyncSnapshot<List<Document>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return buildListView(snapshot.data[index].documents);
            },
          );
        } else {
          return Text("error");
        }
      },
    );
  }

  ListView buildListView(List<Documents> documents) {
    return ListView.builder(
      itemCount: documents.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(documents[index].name),
        leading: Text(documents[index].fields.imgUrl.stringValue),
        subtitle: Text(documents[index].fields.desc.stringValue),
      ),
    );
  }
}
