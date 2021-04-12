import 'package:flutter/material.dart';
import 'package:jedzonko/view/productView.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                    child: Column(children: [
                  Text(
                    "Kalkulator",
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                      child: ListView(children: [
                    ListTile(
                      title: Text('Item 1',
                          style: Theme.of(context).textTheme.bodyText1),
                      onTap: () {
                        Navigator.pushNamed(context, ProductView.routeName,
                            arguments: ScreenArguments(
                              'Item 1',
                            ));
                      },
                    ),
                    ListTile(
                      title: Text('Item 2',
                          style: Theme.of(context).textTheme.bodyText1),
                      onTap: () {
                        Navigator.pushNamed(context, ProductView.routeName,
                            arguments: ScreenArguments(
                              'Item 2',
                            ));
                      },
                    ),
                  ])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).primaryColor),
                        ),
                        onPressed: () {},
                        child: Text("WYCZYŚĆ"),
                      ),
                      Text('0/2000 kcal',
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  )
                ])))));
  }
}
