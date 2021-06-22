import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              TabBar(indicatorColor: Theme.of(context).primaryColor, tabs: [
                Tab(text: 'Składniki'),
                Tab(text: 'Wartości odżywcze na 100g'),
              ]),
              TabBarView(children: [
                Center(child: Text('Składniki')),
                Center(child: Text('Wartości odżwycze na 100g')),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
