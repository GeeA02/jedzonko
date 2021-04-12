import 'package:flutter/material.dart';
import 'package:jedzonko/view/productWidget.dart';

class HistoryWidget extends StatelessWidget {
  HistoryWidget({Key key}) : super(key: key);

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
                ListTile(
                  title: Text('Item 1',
                      style: Theme.of(context).textTheme.bodyText1),
                  onTap: () {
                    Navigator.pushNamed(context, ProductWidget.routeName,
                        arguments: ScreenArguments(
                          'Item 1',
                        ));
                  },
                ),
                ListTile(
                  title: Text('Item 2',
                      style: Theme.of(context).textTheme.bodyText1),
                  onTap: () {
                    Navigator.pushNamed(context, ProductWidget.routeName,
                        arguments: ScreenArguments(
                          'Item 2',
                        ));
                  },
                ),
              ]))
            ])));
  }
}
