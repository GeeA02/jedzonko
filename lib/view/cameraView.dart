import 'package:flutter/material.dart';
import 'package:qr_mobile_vision/qr_camera.dart';

class CameraView extends StatelessWidget {
  CameraView({Key? key}) : super(key: key);

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
              new SizedBox(
                width: 300.0,
                height: 300.0,
                child: new QrCamera(
                  onError: (context, error) => Text(error.toString()),
                  qrCodeCallback: (String? barcode) {print(barcode);},
                ),
              )
            ]),
      ),
    )));
  }

  void buttonPressed() {}
}
