import 'package:flutter/material.dart';

class InstagramView extends StatefulWidget {
  @override
  _InstagramViewState createState() => _InstagramViewState();
}

class _InstagramViewState extends State<InstagramView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: buildAppBarFixed(),
        body: CustomScrollView(
          slivers: [
            buildSliverToBoxAdapterHeader(),
            buildSliverAppBarCollepse(),
            buildSliverGridBody()
          ],
        ),
      ),
    );
  }

  SliverGrid buildSliverGridBody() {
    return SliverGrid.count(
      crossAxisCount: 3,
      children: List.generate(
          30,
          (index) => Card(
                child: Text("$index"),
              )),
    );
  }

  SliverAppBar buildSliverAppBarCollepse() {
    return SliverAppBar(
      pinned: true,
      title: TabBar(tabs: [
        Tab(
          icon: Icon(Icons.ac_unit),
        ),
        Tab(
          icon: Icon(Icons.ac_unit),
        ),
        Tab(
          icon: Icon(Icons.ac_unit),
        ),
      ]),
    );
  }

  SliverToBoxAdapter buildSliverToBoxAdapterHeader() {
    return SliverToBoxAdapter(
      child: AspectRatio(aspectRatio: 2 / 1, child: Placeholder()),
    );
  }

  AppBar buildAppBarFixed() {
    return AppBar(
      leading: Icon(Icons.arrow_back),
      title: Text("Instagram UI"),
      centerTitle: false,
    );
  }
}
