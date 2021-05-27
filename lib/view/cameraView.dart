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
                height: 250.0,
                child: new QrCamera(
                  notStartedBuilder: (context) =>
                      Center(child: CircularProgressIndicator()),
                  onError: (context, error) =>
                      Center(child: Text(error.toString())),
                  qrCodeCallback: (String? barcode) {
                    //TODO save result in localDB and show productView or errorProductView
                    print(barcode);

                    /*
                    Navigator.pushNamed(context, ProductView.routeName,
                        arguments: ProductScreenArguments(_productName));
                        */
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.symmetric(
                          vertical: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 35.0,
                          ),
                          horizontal: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 60.0,
                          )),
                    ),
                  ),
                ),
              )
            ]),
      ),
    )));
  }
}
