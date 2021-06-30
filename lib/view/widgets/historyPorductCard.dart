import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/productHistory.dart';

import '../productView.dart';

class HistoryProductCard extends StatelessWidget {
  final ProductHistory _apiProduct;
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
          child: _apiProduct.productInfo.imageUrl != null
              ? Image.network(_apiProduct.productInfo.imageUrl!)
              : Image.asset('assets/images/notFound.jpg'),
        ),
        title: Text(_apiProduct.productInfo.name,
            style: Theme.of(context).textTheme.bodyText1),
        onTap: () {
          Navigator.pushNamed(context, ProductView.routeName,
              arguments: _apiProduct);
        },
        subtitle: Text(_apiProduct.productInfo.getDate()),
      ),
    );
  }
}
