import 'package:flutter/material.dart';
import 'package:jedzonko/view/productView.dart';
import 'package:jedzonko/view/widgets/hisotryPorductCard.dart';

class HistoryView extends StatelessWidget {
  HistoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Theme.of(context).primaryColorLight),
          elevation: 0.0,
          title: Text("Historia"),
        ),
        body: Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Expanded(
                  child: ListView(children: [
                HistoryProductCard(
                    "item1", null, DateTime.now().toIso8601String()),
                HistoryProductCard("item2", "https://picsum.photos/250?image=9",
                    DateTime.now().toIso8601String())
              ]))
            ])));
  }
}
