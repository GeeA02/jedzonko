import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/nutriments.dart';

class ProductInfo extends StatelessWidget {
  final Nutriments? _nutriments;
  late final List<List<String>>? _nutrimentsList;
  ProductInfo(this._nutriments) {
    if (_nutriments != null) _nutrimentsList = _nutriments!.toList();
  }

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
                              // info about nutriscore
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
                              // info about nutriments
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                child: Center(
                                  child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      padding: const EdgeInsets.all(8),
                                      itemCount: _nutrimentsList!.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Column(children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(_nutrimentsList![index][0],
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1),
                                              Text(_nutrimentsList![index][1],
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1),
                                            ],
                                          ),
                                          Divider(
                                              color: Theme.of(context)
                                                  .dividerColor),
                                        ]);
                                      }),
                                ),
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
