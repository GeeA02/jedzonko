import 'package:flutter/material.dart';

class CameraWidget extends StatelessWidget {
  CameraWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: EdgeInsets.all(30),
      child: Text('KAMERA'),
    )));
  }
}
