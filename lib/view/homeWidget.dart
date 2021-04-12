import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Text(
                        "Logo",
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.center,
                      )
                    ])))));
  }
}
