import 'package:flutter/material.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/view/widgets/addProductDialog.dart';
import 'package:jedzonko/view/widgets/productInfo.dart';

class ProductView extends StatelessWidget {
  static const routeName = '/product';
  ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ApiProduct apiProduct =
        ModalRoute.of(context)!.settings.arguments as ApiProduct;

    return Scaffold(
        appBar: AppBar(
            iconTheme:
                IconThemeData(color: Theme.of(context).primaryColorLight),
            elevation: 0.0,
            title: Text(apiProduct.product.name.toUpperCase())),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Container(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(16.0),
                  child: apiProduct.product.imageUrl != null
                      ? Image.network(apiProduct.product.imageUrl!)
                      : Image.asset('assets/images/notFound.jpg'),
                ),
                Expanded(child: ProductInfo(apiProduct.nutriments)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              primary:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                          onPressed: () {
                            showDialog<void>(
                                context: context,
                                builder: (context) =>
                                    AddProductDialog(apiProduct));
                          },
                          child: Text("Dodaj do kalkulatora"),
                        ),
                      ),
                    )
                  ],
                )
              ])),
        ));
  }
}
