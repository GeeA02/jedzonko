import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/nutriments.dart';

class ProductInfo extends StatelessWidget {
  final Nutriments? _nutriments;
  ProductInfo(this._nutriments);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, // length of tabs
        initialIndex: 0,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: TabBar(
                  indicatorColor: Theme.of(context).primaryColor,
                  labelColor: Theme.of(context).textTheme.bodyText1!.color,
                  tabs: [
                    Tab(text: 'Ogólne'),
                    Tab(text: 'Wartości odżywcze\n na 100g'),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    height: 400, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(children: <Widget>[
                      _nutriments != null
                          ? Container(
                              child: Center(
                                child: Text('Display Tab 1',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          : Center(
                              child: Icon(
                                Icons
                                    .signal_wifi_connected_no_internet_4_rounded,
                                size: 100,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                      _nutriments != null
                          ? Container(
                              child: Center(
                                child: Text('Display Tab 2',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          : Center(
                              child: Icon(
                                Icons
                                    .signal_wifi_connected_no_internet_4_rounded,
                                size: 100,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                    ])),
              )
            ]));
  }
}
