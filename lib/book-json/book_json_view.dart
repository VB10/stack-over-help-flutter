import 'package:flutter/material.dart';

class BookJsonView extends StatefulWidget {
  @override
  _BookJsonViewState createState() => _BookJsonViewState();
}

class _BookJsonViewState extends State<BookJsonView> {
  List<BookModel> books = [
    BookModel("Genesis", Book(1, "24", [1, 1, 2, 3]))
  ];

  @override
  void initState() {
    super.initState();
    // fill json use  json to dart
  }

  List<int> getChapters(String name) {
    final model = books.firstWhere((item) => item.name == name);
    if (model != null) {
      print("Is okey");
      return model.book.chapters;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
              onTap: () {
                getChapters(books[index].name);
              },
              title: Text(
                books[index].name,
              ));
        },
      ),
    );
  }
}

class Book {
  final int id;
  List<int> chapters;

  final String description;
  Book(this.id, this.description, this.chapters);
}

class BookModel {
  String name;
  Book book;
  BookModel(this.name, this.book);
}
