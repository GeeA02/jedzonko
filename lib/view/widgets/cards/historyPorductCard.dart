import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/productHistory.dart';
import 'package:jedzonko/view/widgets/dialogs/loadingDialog.dart';
import 'package:jedzonko/viewModel/historyViewModel.dart';

import '../../productView.dart';


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
          // show loading dialog, and return result from api or null if error occurs
          Future<ApiProduct?> result = showDialog<ApiProduct?>(
            barrierDismissible: false,
            context: context,
            builder: (context) =>
                LoadingDialog(_apiProduct.productInfo.barcode),
            useRootNavigator: false,
          );

          result.then((value) => checkResult(value, context));
        },
        subtitle: Text(_apiProduct.productInfo.getDate()),
      ),
    );
  }

  void checkResult(value, context) async {
    if (value.runtimeType == ApiProduct) {
      HistoryViewModel().addProduct(
          ProductHistory(value.productInfo, value.productInfo.barcode));
      // navigate to product page
      await Navigator.pushNamed(context, ProductView.routeName,
          arguments: value);
    }
  }
}
