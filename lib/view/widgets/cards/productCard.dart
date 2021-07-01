import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/product_calculator.dart';
import 'package:jedzonko/view/widgets/dialogs/addProductDialog.dart';
import 'package:jedzonko/view/widgets/dialogs/loadingDialog.dart';
import 'package:jedzonko/viewModel/calculatorViewModel.dart';

import '../../productView.dart';

class ProductCard extends StatelessWidget {
  final ProductCalculator _product;
  final viewModel = CalculatorViewModel();

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
          subtitle: Text(_product.quantity.toString() + 'g',
              style: Theme.of(context).textTheme.subtitle2),
          onTap: () {
            // show loading dialog, and return result from api or null if error occurs
            Future<ApiProduct?> result = showDialog<ApiProduct?>(
              barrierDismissible: false,
              context: context,
              builder: (context) => LoadingDialog(_product.productInfo.barcode),
              useRootNavigator: false,
            );

            result.then((value) => checkResult(value, context));
          },
        ),
      ),
    );
  }

  void checkResult(value, context) async {
    if (value.runtimeType == ApiProduct) {
      // navigate to product page
      await Navigator.pushNamed(context, ProductView.routeName,
          arguments: value);
    }
  }
}
