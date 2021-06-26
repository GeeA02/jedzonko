import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/api/api.dart';
import 'package:jedzonko/model/apiProduct.dart';


class LoadingDialog extends StatelessWidget {
  final String _barcode;
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
                // pop with returning APIProduct
                Timer(Duration(milliseconds: 1000), () {
                  Navigator.of(context, rootNavigator: true).pop(ApiProduct(
                      snapshot.data.product, snapshot.data.nutriments));
                });
              } else if (snapshot.hasError) {
                children = <Widget>[
                  Icon(
                    Icons.error_outline,
                    color: Theme.of(context).errorColor,
                    size: 60,
                  ),
                  Text(
                    "Niestety kodu $_barcode",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "nie znaleziono w bazie danych. Sprawdź poprawność wczytanego kodu i spróbuj ponownie.",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ];
                // pop and return null
                Timer(Duration(milliseconds: 5000), () {
                  Navigator.of(context, rootNavigator: true).pop(null);
                });
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
