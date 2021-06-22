import 'package:flutter/material.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/nutriments.dart';
import 'package:jedzonko/model/product.dart';
import 'package:jedzonko/view/widgets/addProductDialog.dart';
import 'package:jedzonko/view/widgets/productInfo.dart';

class ProductView extends StatelessWidget {
  static const routeName = '/product';
  ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ApiProduct args =
        ModalRoute.of(context)!.settings.arguments as ApiProduct;

    return Scaffold(
        appBar: AppBar(
            iconTheme:
                IconThemeData(color: Theme.of(context).primaryColorLight),
            elevation: 0.0,
            title: Text(args.product.name)),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Center(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: args.product.imageUrl != null
                      ? Image.network(args.product.imageUrl!)
                      : Image.asset('assets/images/notFound.jpg'),
                ),
                //ProductInfo(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Theme.of(context).textTheme.bodyText1!.color,
                          side: BorderSide(
                              color: Theme.of(context).primaryColor)),
                      onPressed: () {},
                      child: Text("Szczegóły"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        showDialog<void>(
                            context: context,
                            builder: (context) => AddProductDialog(null));
                      },
                      child: Text("Dodaj"),
                    )
                  ],
                )
              ])),
        ));
  }
}
