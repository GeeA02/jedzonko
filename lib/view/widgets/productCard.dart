import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../productView.dart';

class ProductCard extends StatelessWidget {
  final String _productName;
  final String _imageUrl;
  ProductCard(this._productName, this._imageUrl);

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
          child: _imageUrl != null
              ? Image.network(_imageUrl)
              : Image.asset('assets/images/notFound.jpg'),
        ),
        title: Text(_productName, style: Theme.of(context).textTheme.bodyText1),
        onTap: () {
          Navigator.pushNamed(context, ProductView.routeName,
              arguments: ScreenArguments(_productName));
        },
      ),
    );
  }
}