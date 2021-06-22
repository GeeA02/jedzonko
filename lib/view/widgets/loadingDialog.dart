import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/api/api.dart';
import 'package:jedzonko/view/productErrorView.dart';

import '../productView.dart';

class LoadingDialog extends StatelessWidget {
  String _barcode;
  LoadingDialog(this._barcode);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).dialogBackgroundColor.withOpacity(0.7),
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        FutureBuilder(
            future: API.fetchApiProduct(
                _barcode), // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              List<Widget>? children;
              if (snapshot.hasData) {
                children = <Widget>[
                  Icon(
                    Icons.check_circle_outline,
                    color: Theme.of(context).primaryColor,
                    size: 60,
                  ),
                ];

                Navigator.pushNamed(context, ProductView.routeName,
                    arguments: ProductScreenArguments(
                        snapshot.data.product, snapshot.data.nutriments));
              } else if (snapshot.hasError) {
                children = <Widget>[
                  Icon(
                    Icons.error_outline,
                    color: Theme.of(context).errorColor,
                    size: 60,
                  ),
                ];

                Navigator.pushNamed(context, ProductErrorView.routeName,
                    arguments: ErrorScreenArguments(_barcode));
              } else {
                children = <Widget>[
                  SizedBox(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).primaryColor),
                    ),
                    width: 60,
                    height: 60,
                  )
                ];
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: children,
                ),
              );
            }),
      ]),
    );
  }
}
