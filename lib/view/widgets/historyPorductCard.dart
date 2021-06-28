import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/apiProduct.dart';

import '../productView.dart';

class HistoryProductCard extends StatelessWidget {
  final ApiProduct _apiProduct;
  HistoryProductCard(this._apiProduct);

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
          child: _apiProduct.product.imageUrl != null
              ? Image.network(_apiProduct.product.imageUrl!)
              : Image.asset('assets/images/notFound.jpg'),
        ),
        title: Text(_apiProduct.product.name,
            style: Theme.of(context).textTheme.bodyText1),
        onTap: () {
          Navigator.pushNamed(context, ProductView.routeName,
              arguments: _apiProduct);
        },
        subtitle: Text(_apiProduct.product.getDate()),
      ),
    );
  }
}
