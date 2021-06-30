import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/product_calculator.dart';
import 'package:jedzonko/view/widgets/addProductDialog.dart';
import 'package:jedzonko/viewModel/calculatorViewModel.dart';

import '../productView.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  final ProductCalculator _product;
  var viewModel = CalculatorViewModel();

  ProductCard(this._product);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        viewModel.deleteProduct(_product);
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
                  context: context,
                  builder: (context) => AddProductDialog(_product));
            },
          ),
          leading: Container(
            height: 50,
            width: 50,
            child: _product.productInfo.imageUrl != null
                ? Image.network(_product.productInfo.imageUrl!)
                : Image.asset('assets/images/notFound.jpg'),
          ),
          title: Text(_product.productInfo.name,
              style: Theme.of(context).textTheme.bodyText1),
          onTap: () {
            Navigator.pushNamed(context, ProductView.routeName,
                arguments: _product);
          },
        ),
      ),
    );
  }
}
