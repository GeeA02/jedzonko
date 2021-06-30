import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/nutriments.dart';

class ProductInfo extends StatelessWidget {
  final Nutriments? _nutriments;
  late final List<List<String>>? _nutrimentsList;
  late final String? _nutriScore;
  ProductInfo(this._nutriments, this._nutriScore) {
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
                      _nutriScore != null
                          ? Container(
                              // info about nutriscore
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Image.asset(
                                      'assets/images/Nutri-score-${_nutriScore!.toUpperCase()}.png'),
                                ),
                              ),
                            )
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.dnd_forwardslash_outlined,
                                    size: 100,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Brak danych',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4),
                                  ),
                                ],
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.dnd_forwardslash_outlined,
                                    size: 100,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Brak danych',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4),
                                  ),
                                ],
                              ),
                            ),
                    ])),
              )
            ]));
  }
}
