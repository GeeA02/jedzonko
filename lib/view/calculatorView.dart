import 'package:flutter/material.dart';
import 'package:jedzonko/view/productView.dart';
import 'package:jedzonko/view/widgets/productCard.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Text(
                        "Kalkulator",
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.center,
                      ),
                      Expanded(
                        child: ListView(children: [
                          ProductCard(
                              "item1", "https://picsum.photos/250?image=9"),
                          ProductCard("item2", null)
                        ]),
                      ),
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
