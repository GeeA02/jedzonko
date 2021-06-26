import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/database/calculator_product_repository.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/product.dart';
import 'package:jedzonko/view/widgets/addProductDialog.dart';

import '../productView.dart';

class ProductCard extends StatelessWidget {
  final Product _product;
  var box = CalculatorProductRepository().productListBox;

  ProductCard(this._product);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        box!.delete(_product.hashCode);
        //TODO remove product from list (should work but not tested)
      },
      background: Container(
        color: Theme.of(context).errorColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            ),
          ],
        ),
      ),
      child: Card(
        elevation: 5,
        color: Theme.of(context).cardColor,
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          trailing: IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              showDialog<void>(
                  context: context, builder: (context) => AddProductDialog(null));
            },
          ),
          leading: Container(
            height: 50,
            width: 50,
            child: _product.imageUrl != null
                ? Image.network(_product.imageUrl!)
                : Image.asset('assets/images/notFound.jpg'),
          ),
          title:
              Text(_product.name, style: Theme.of(context).textTheme.bodyText1),
          onTap: () {
            Navigator.pushNamed(context, ProductView.routeName,
                arguments: ApiProduct(_product, null));
          },
        ),
      ),
    );
  }
}
