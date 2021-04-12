import 'package:flutter/material.dart';

class CameraWidget extends StatelessWidget {
  CameraWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Zeskanuj kod produktu",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              new RaisedButton(
                  key: null,
                  onPressed: buttonPressed,
                  color: const Color(0xFFe0e0e0),
                  child: new Text(
                    "CAMERA",
                    style: new TextStyle(
                        fontSize: 12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ))
            ]),
      ),
    )));
  }

  void buttonPressed() {}
}
