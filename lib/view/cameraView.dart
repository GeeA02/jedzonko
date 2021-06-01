import 'package:flutter/material.dart';
import 'package:jedzonko/api/api.dart';
import 'package:jedzonko/view/productView.dart';
import 'package:jedzonko/view/widgets/loadingDialog.dart';
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //TODO  v make this responsible v
              SizedBox(
                width: 300.0,
                height: 250.0,
                child: QrCamera(
                  notStartedBuilder: (context) => Center(
                      child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor),
                  )),
                  onError: (context, error) =>
                      Center(child: Text(error.toString())),
                  qrCodeCallback: (String? barcode) {
                    //TODO save result in localDB and show productView or errorProductView
                    print(barcode);

                    // version 1
                    // showDialog<void>(
                    //   context: context,
                    //   builder: (context) => LoadingDialog(barcode!),
                    // );

                    // //version 2
                    // API.fetchApiProduct(barcode!).then((value) =>
                    //     Navigator.pushNamed(context, ProductView.routeName,
                    //         arguments: ProductScreenArguments(
                    //             value.product, value.nutriments)));
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
