import 'package:flutter/material.dart';
import 'package:jedzonko/theme/colors.dart';

class ProductWidget extends StatelessWidget {
  static const routeName = '/product';
  ProductWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args =
        ModalRoute.of(context).settings.arguments as ScreenArguments;

    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: CustomColors.PrimaryLightColor),
            elevation: 0.0,
            title: Text(args.productName)),
        body: Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Text(
                "FOTO",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget massa a justo dictum aliquam. Vivamus sed posuere ex, quis pretium nulla. Sed nulla ipsum, porta sed aliquam in, efficitur eu ligula. Donec lobortis sem vitae ex mattis, tempus euismod nulla tempor. Fusce augue turpis, condimentum ac ex vitae, aliquam scelerisque nibh. Proin consequat elit neque, quis volutpat mi malesuada sit amet. Praesent volutpat dui at ex efficitur porttitor at at nibh. Duis et nunc justo. ',
                          style: Theme.of(context).textTheme.bodyText1))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: Theme.of(context).textTheme.bodyText1.color,
                        side:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    onPressed: () {},
                    child: Text("Szczegóły"),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor),
                    ),
                    onPressed: () {},
                    child: Text("Dodaj"),
                  )
                ],
              )
            ])));
  }
}

class ScreenArguments {
  final String productName;

  ScreenArguments(this.productName);
}
