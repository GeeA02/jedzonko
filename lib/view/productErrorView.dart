import 'package:flutter/material.dart';

class ProductErrorView extends StatelessWidget {
  static const routeName = '/productError';
  ProductErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ErrorScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ErrorScreenArguments;

    return Scaffold(
        appBar: AppBar(
            iconTheme:
                IconThemeData(color: Theme.of(context).primaryColorLight),
            elevation: 0.0,
            title: Text('Błąd')),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Niestety kodu",
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
                Text(
                  args.barcode,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "nie znaleziono w bazie danych. Sprawdź poprawność wczytanego kodu i spróbuj ponownie.",
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ]),
        )));
  }
}

class ErrorScreenArguments {
  final String barcode;

  ErrorScreenArguments(this.barcode);
}
