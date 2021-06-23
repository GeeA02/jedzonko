import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_mobile_vision/qr_camera.dart';
import 'package:qr_mobile_vision/qr_mobile_vision.dart';

class CameraWidget extends StatefulWidget {
  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  bool _camState = true;
  @override
  void dispose() {
    super.dispose();
    _camState = false;
    print('nałra');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.4,
      child: _camState
          ? QrCamera(
              formats: [
                BarcodeFormats.CODE_128,
                BarcodeFormats.CODE_39,
                BarcodeFormats.CODE_93,
                BarcodeFormats.CODABAR,
              ],
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
                setState(() {
                  _camState = false;
                });
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
            )
          : Center(child: Text("Camera inactive")),
    );
  }
}
