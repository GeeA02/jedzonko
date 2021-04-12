import 'package:flutter/material.dart';
import 'package:jedzonko/theme/colors.dart';
import 'package:jedzonko/view/productWidget.dart';

class HistoryWidget extends StatelessWidget {
  HistoryWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
              color: CustomColors.PrimaryLightColor.withOpacity(0.3)),
          elevation: 0.0,
        ),
        body: Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Text(
                "Historia",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
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
