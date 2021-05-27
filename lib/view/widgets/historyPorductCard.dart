import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/product.dart';

import '../productView.dart';

class HistoryProductCard extends StatelessWidget {
  final Product _product;
  HistoryProductCard(this._product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Theme.of(context).cardColor,
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          child: _product.imageUrl != null
              ? Image.network(_product.imageUrl!)
              : Image.asset('assets/images/notFound.jpg'),
        ),
        title: Text(_product.name, style: Theme.of(context).textTheme.bodyText1),
        onTap: () {
          Navigator.pushNamed(context, ProductView.routeName,
              arguments: ProductScreenArguments(_product));
        },
        subtitle: Text(_product.date),
      ),
    );
  }
}
